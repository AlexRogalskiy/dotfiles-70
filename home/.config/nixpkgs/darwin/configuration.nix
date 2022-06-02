{ config, pkgs, ...}:

{
  imports = [
    ../home.nix
  ];

  environment.systemPackages =
    with pkgs; [
    ];

  system.defaults = {
    dock = {
      autohide = true;
      autohide-delay = "0.0";
      autohide-time-modifier = "0.0";
      minimize-to-application = true;
      mru-spaces = false;
      orientation = "bottom";
      show-recents = false;
      tilesize = 64;
    };

    screencapture.location = "${builtins.getEnv ("HOME")}/Desktop/Screenshots";

    finder = {
      AppleShowAllExtensions = true;
      _FXShowPosixPathInTitle = true;
      FXEnableExtensionChangeWarning = false;
    };

    trackpad = {
      Clicking = true;
    };

    NSGlobalDomain._HIHideMenuBar = false;
  };

  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [
        "FiraCode"
        "SourceCodePro"
      ]; })
    ];
  };

  homebrew = {
    brewPrefix = "/opt/homebrew/bin";
    enable = true;
    autoUpdate = true;
    global = {
      brewfile = true;
      noLock = true;
    };

    taps = [
      "homebrew/bundle"
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/core"
      "homebrew/services"
      "ubuntu/microk8s"
    ];

    brews = [
      "cloudflared"
      "deno"
      "hevea"
      "hyperfine"
      "llvm"
      "make"
      "mmv"
      "pulumi"
      "tidy-html5"
      "watchexec"
      "yarn"
    ];

    casks = [
      "1password-cli"
      "basictex"
      "brave-browser"
      "discord"
      "docker"
      "figma"
      "kitty"
      "linear-linear"
      "miro"
      "ngrok"
      "obs"
      "pgadmin4"
      "steam"
      "telegram"
      "visual-studio-code"
      # "racket"
    ];
  };

  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToControl = true;

  environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  system.stateVersion = 4;
}
