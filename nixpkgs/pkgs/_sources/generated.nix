# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  bauer = {
    pname = "bauer";
    version = "v1.5.3";
    src = fetchFromGitHub ({
      owner = "matthewbauer";
      repo = "bauer";
      rev = "v1.5.3";
      fetchSubmodules = false;
      sha256 = "sha256-IBzX7WASluoxXVdWkoJHRIQQF4Fi7IJOvRfRl+W3YZI=";
    });
  };
  firefox-ui-fix = {
    pname = "firefox-ui-fix";
    version = "19530cc7eff02128db8bd5e000afbc45d5317a7b";
    src = fetchFromGitHub ({
      owner = "black7375";
      repo = "Firefox-UI-Fix";
      rev = "19530cc7eff02128db8bd5e000afbc45d5317a7b";
      fetchSubmodules = false;
      sha256 = "sha256-CH8A3WPLq5J1RpEuYGchWfrZaYG2PisQ2wsxCAtIp1Q=";
    });
    date = "2022-09-29";
  };
  gauth = {
    pname = "gauth";
    version = "v1.2.2";
    src = fetchFromGitHub ({
      owner = "pcarrier";
      repo = "gauth";
      rev = "v1.2.2";
      fetchSubmodules = false;
      sha256 = "sha256-EprxybxUEvpT4jUaI75Y4E3nzskjX8HA9qJap6/Ws+0=";
    });
  };
  ohmyzsh = {
    pname = "ohmyzsh";
    version = "7dcabbe6826073ef6069c8a4b6f9a943f00d2df0";
    src = fetchFromGitHub ({
      owner = "ohmyzsh";
      repo = "ohmyzsh";
      rev = "7dcabbe6826073ef6069c8a4b6f9a943f00d2df0";
      fetchSubmodules = false;
      sha256 = "sha256-Mk2GQh7Yh0cyklSEIutIIUEQNMAcPC1i3QT5K6lCEt8=";
    });
    date = "2022-09-10";
  };
  stumpwm-contrib = {
    pname = "stumpwm-contrib";
    version = "6d4584f01dec0143a169186df1608860d1aa1ef0";
    src = fetchFromGitHub ({
      owner = "stumpwm";
      repo = "stumpwm-contrib";
      rev = "6d4584f01dec0143a169186df1608860d1aa1ef0";
      fetchSubmodules = false;
      sha256 = "sha256-ts+MPFtLCjj6T2MuOxWSKfNCv9gvS348SV6IztUfx8M=";
    });
    date = "2022-08-19";
  };
  tridactyl-emacs = {
    pname = "tridactyl-emacs";
    version = "5674d6bb38abbe639dd8caaf3d81f33fc06f59fd";
    src = fetchFromGitHub ({
      owner = "jumper047";
      repo = "tridactyl_emacs_config";
      rev = "5674d6bb38abbe639dd8caaf3d81f33fc06f59fd";
      fetchSubmodules = false;
      sha256 = "sha256-qWajthIVkqDCwY1QkUs0DqSt+XFWwVzyI8N4s7G7tsI=";
    });
    date = "2021-11-01";
  };
  zsh-background-notify = {
    pname = "zsh-background-notify";
    version = "d5f0430cb052f82c433c17707816910da87e201e";
    src = fetchFromGitHub ({
      owner = "t413";
      repo = "zsh-background-notify";
      rev = "d5f0430cb052f82c433c17707816910da87e201e";
      fetchSubmodules = false;
      sha256 = "sha256-NhDAOKCkNItODP8d68FVySZghTvPKXG2eBPlvkCZDl0=";
    });
    date = "2015-09-14";
  };
}
