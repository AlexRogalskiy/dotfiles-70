{ config, pkgs, ...}:

{
  imports = [
    ../home.nix
  ];

  environment.systemPackages =
    with pkgs; [
    ];

  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToControl = true;

  environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  system.stateVersion = 4;
}
