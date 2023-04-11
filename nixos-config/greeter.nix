{
  config,
  pkgs,
  lib,
  flake-inputs,
  ...
}: let
  hyprland-gtkgreet = pkgs.writeText "hyprland-gtkgreet" ''
    exec-once = gtkgreet -l; hyprctl dispatch exit
  '';

  launch-gtkgreet = pkgs.writeShellApplication {
    name = "launch-gtkgreet";
    runtimeInputs = [
      flake-inputs.hyprland.packages.${pkgs.system}.hyprland-nvidia
      pkgs.greetd.gtkgreet
    ];
    text = ''
      export LIBVA_DRIVER_NAME=nvidia
      export XDG_SESSION_TYPE=wayland
      export GBM_BACKEND=nvidia-drm
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export WLR_NO_HARDWARE_CURSORS=1
      Hyprland -c ${hyprland-gtkgreet}
    '';
  };

  hyprland = pkgs.writeShellScriptBin "hyprland-run" ''
    export LIBVA_DRIVER_NAME=nvidia
    export XDG_SESSION_TYPE=wayland
    export GBM_BACKEND=nvidia-drm
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export WLR_NO_HARDWARE_CURSORS=1

    systemd-cat -t xsession Hyprland
  '';
in {
  services.xserver.displayManager.lightdm.enable = false;

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = lib.getExe launch-gtkgreet;
    };
  };

  environment.systemPackages = [
    hyprland
    pkgs.pciutils
  ];

  environment.etc."greetd/environments".text = ''
    hyprland-run
  '';

  systemd.tmpfiles.rules = let
    user = config.services.greetd.settings.default_session.user;
  in [
    "d /var/log/gtkgreet 0755 greeter ${user} - -"
    "d /var/cache/gtkgreet 0755 greeter ${user} - -"
  ];

  services.xserver.displayManager.session = [
    {
      manage = "desktop";
      name = "user-defined";
      start = config.services.xserver.displayManager.sessionData.wrapper;
    }
  ];
}