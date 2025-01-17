{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [
    ./barrier.nix
    ./dunst.nix
    ./gtk.nix
    ./hyprland.nix
    ./mime.nix
    ./ncmpcpp.nix
    ./password-store.nix
    ./pipewire.nix
    ./rofi.nix
    ./stumpwm.nix
  ];

  config = lib.mkIf config.custom.desktop-environment {
    services.caffeine.enable = true;
    xsession.importedVariables = ["PATH"];

    assertions = [
      {
        assertion = config.custom.graphical-applications;
        message = "the desktop environment expects graphical applications to be set up as well";
      }
    ];
  };
}
