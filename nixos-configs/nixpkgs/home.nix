{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "rodrigo";
  home.homeDirectory = "/home/rodrigo";

  home.packages = [
    pkgs.vim pkgs.nodejs pkgs.yarn pkgs.docker pkgs.docker-compose
    pkgs.awesome pkgs.openssl pkgs.python3 pkgs.tor-browser-bundle-bin pkgs.tor
    pkgs.chromium pkgs.sublime-merge pkgs.onlyoffice-bin pkgs.nodePackages.typescript
    pkgs.emacs pkgs.ripgrep pkgs.git pkgs.jetbrains-mono pkgs.discord pkgs.vlc
    pkgs.spotify pkgs.alacritty pkgs.nitrogen pkgs.dmenu pkgs.vscode
    pkgs.neovim pkgs.unzip pkgs.flameshot pkgs.polybar pkgs.libsForQt5.kdenlive
    pkgs.killall pkgs.playerctl pkgs.zscroll pkgs.picom pkgs.youtube-dl
    pkgs.ffmpeg
  ];


  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
