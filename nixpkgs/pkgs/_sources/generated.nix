# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  bauer = {
    pname = "bauer";
    version = "v1.5.3";
    src = fetchgit {
      url = "https://github.com/matthewbauer/bauer";
      rev = "v1.5.3";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "14k1nzjrgl8ppm785v32h4bi11248y194mjpblqym5hjc3nxf710";
    };
    
  };
  elpa-project = {
    pname = "elpa-project";
    version = "0.6.1";
    src = fetchurl {
      url = "https://elpa.gnu.org/packages/project-0.6.1.tar";
      sha256 = "174fli3swbn67qcs9isv70vwrf6r41mak6dbs98gia89rlb71c8v";
    };
  };
  elpa-spinner = {
    pname = "elpa-spinner";
    version = "1.7.3";
    src = fetchurl {
      sha256 = "188i2r7ixva78qd99ksyh3jagnijpvzzjvvx37n57x8nkp8jc4i4";
      url = "https://elpa.gnu.org/packages/spinner-1.7.3.el.lz";
    };
  };
  firefox-ui-fix = {
    pname = "firefox-ui-fix";
    version = "01ae88bf2c4710e1f364d9eb2901ca2b722cefe7";
    src = fetchgit {
      url = "https://github.com/black7375/Firefox-UI-Fix";
      rev = "01ae88bf2c4710e1f364d9eb2901ca2b722cefe7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "00ifjdm5jnvp8hpkp7qypc4q9jz2jsl8dcjr4sksjh2pvh349lp3";
    };
  };
  gauth = {
    pname = "gauth";
    version = "v1.1";
    src = fetchgit {
      url = "https://github.com/pcarrier/gauth";
      rev = "v1.1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "179jxp2n6bms0x5brqyhd1437d5gfh75jn3sl0m7d04jf3kk3bi1";
    };
    
  };
  gcs = {
    pname = "gcs";
    version = "v4.34.0";
    src = fetchgit {
      url = "https://github.com/richardwilkes/gcs";
      rev = "v4.34.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "079mqxi8v9jcg4xbgilli7r96rzpr80hkvmzkb8w8i9iw4dccbml";
    };
  };
  ohmyzsh = {
    pname = "ohmyzsh";
    version = "1b03896a0e01ad263439449a0742d0f3339732e2";
    src = fetchgit {
      url = "https://github.com/ohmyzsh/ohmyzsh";
      rev = "1b03896a0e01ad263439449a0742d0f3339732e2";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0hmmlj7bvxa48jybmk495yiy8xcyyx9dlbm4g6hh2ni59wsczcbv";
    };
  };
  stumpwm-contrib = {
    pname = "stumpwm-contrib";
    version = "d3101d72c350046962194b4fd408e7b5d908fb8f";
    src = fetchgit {
      url = "https://github.com/stumpwm/stumpwm-contrib";
      rev = "d3101d72c350046962194b4fd408e7b5d908fb8f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1sb1nbiaxavfi73f24q12r5pgk6wll78rabnn8ywqhjisavl2gl6";
    };
  };
  tridactyl-emacs = {
    pname = "tridactyl-emacs";
    version = "abc05ae33d282dc8fb999f0706efe406766ed9dc";
    src = fetchgit {
      url = "https://github.com/jumper047/tridactyl_emacs_config";
      rev = "abc05ae33d282dc8fb999f0706efe406766ed9dc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0gmp55kbdrhmdfdzij07jpblqgw6badfnsjgqxfrkhwdwkcgzm5r";
    };
  };
  zsh-background-notify = {
    pname = "zsh-background-notify";
    version = "d5f0430cb052f82c433c17707816910da87e201e";
    src = fetchgit {
      url = "https://github.com/t413/zsh-background-notify";
      rev = "d5f0430cb052f82c433c17707816910da87e201e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0p8fk50bxr8kg2v72afg7f2n09n9ap0yn7gz1i78nd54l0wc041n";
    };
    
  };
}
