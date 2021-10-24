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
    version = "a06ac39211c71607d7db83af10f7c15fe73bdd17";
    src = fetchFromGitHub ({
      owner = "black7375";
      repo = "Firefox-UI-Fix";
      rev = "a06ac39211c71607d7db83af10f7c15fe73bdd17";
      fetchSubmodules = false;
      sha256 = "sha256-EvYktqQ+MAuHPgUZ04iaeU8ohXMvwv3A6cZ5r9iClmM=";
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
    version = "v4.34.1";
    src = fetchFromGitHub ({
      owner = "richardwilkes";
      repo = "gcs";
      rev = "v4.34.1";
      fetchSubmodules = false;
      sha256 = "sha256-CXLmd9YpNfTRU7ZdH+cfRFmLxd5x41SMHbDDptc8/qc=";
    });
  };
  ohmyzsh = {
    pname = "ohmyzsh";
    version = "f1dd97bb2a9df55fae9b1ca26c829b9f8b290667";
    src = fetchFromGitHub ({
      owner = "ohmyzsh";
      repo = "ohmyzsh";
      rev = "f1dd97bb2a9df55fae9b1ca26c829b9f8b290667";
      fetchSubmodules = false;
      sha256 = "sha256-1/+/cGFLbQOLygPR78nqur4JJIVa8uWfDnvqLJHeDcs=";
    });
  };
  stumpwm-contrib = {
    pname = "stumpwm-contrib";
    version = "d3101d72c350046962194b4fd408e7b5d908fb8f";
    src = fetchFromGitHub ({
      owner = "stumpwm";
      repo = "stumpwm-contrib";
      rev = "d3101d72c350046962194b4fd408e7b5d908fb8f";
      fetchSubmodules = false;
      sha256 = "sha256-hj5Bt9JRQsw9snapjA6l3Mx3SxYBE+HGiW6rruKyYek=";
    });
  };
  tridactyl-emacs = {
    pname = "tridactyl-emacs";
    version = "abc05ae33d282dc8fb999f0706efe406766ed9dc";
    src = fetchFromGitHub ({
      owner = "jumper047";
      repo = "tridactyl_emacs_config";
      rev = "abc05ae33d282dc8fb999f0706efe406766ed9dc";
      fetchSubmodules = false;
      sha256 = "sha256-udT/2OSNw5ldx09q65pahj9M15UHyPibaxXmtmYptz4=";
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
