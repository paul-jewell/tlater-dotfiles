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
    version = "6c25391e70dfdeb9c14ecc7500d26c39a83b4c37";
    src = fetchFromGitHub ({
      owner = "black7375";
      repo = "Firefox-UI-Fix";
      rev = "6c25391e70dfdeb9c14ecc7500d26c39a83b4c37";
      fetchSubmodules = false;
      sha256 = "sha256-8dQ2PR21YS0rSj6lbbrNEYTSkxYrOvGpSrAKuumnYsA=";
    });
  };
  gauth = {
    pname = "gauth";
    version = "v1.1";
    src = fetchFromGitHub ({
      owner = "pcarrier";
      repo = "gauth";
      rev = "v1.1";
      fetchSubmodules = false;
      sha256 = "sha256-Ia4x53CSgHYqoHpYWQ50r7QzSGjQ47xKB7ouY8XtMp0=";
    });
  };
  gcs = {
    pname = "gcs";
    version = "v4.36.0";
    src = fetchFromGitHub ({
      owner = "richardwilkes";
      repo = "gcs";
      rev = "v4.36.0";
      fetchSubmodules = false;
      sha256 = "sha256-qWvLQEumi9W4V/OsyxCGkHRyT6rDUQwEW0X3mmUYfsA=";
    });
  };
  ohmyzsh = {
    pname = "ohmyzsh";
    version = "2b492aec93487e8e25cf03df4540aa73dbf5fc9e";
    src = fetchFromGitHub ({
      owner = "ohmyzsh";
      repo = "ohmyzsh";
      rev = "2b492aec93487e8e25cf03df4540aa73dbf5fc9e";
      fetchSubmodules = false;
      sha256 = "sha256-DCgSLCYx8uhyfPU33ItVAqr30I/3AIP+U/jSj4ioHtg=";
    });
  };
  stumpwm-contrib = {
    pname = "stumpwm-contrib";
    version = "6bdd5c6185667f1bc82619270d7c6d7cb9ef926a";
    src = fetchFromGitHub ({
      owner = "stumpwm";
      repo = "stumpwm-contrib";
      rev = "6bdd5c6185667f1bc82619270d7c6d7cb9ef926a";
      fetchSubmodules = false;
      sha256 = "sha256-3O8yt/8O6zExiM/pQ9zhPwcNVjol0MktBLcuS17WT4M=";
    });
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
  };
}
