#!/bin/sh

# System configuration
cp nixos/configuration.nix /etc/nixos/
nixos-rebuild switch

# Packages
cp -r nixpkgs ~/.config/
home-manager switch

# Tiling Manager
cp -r awesome ~/.config/

# Polybar
cp -r polybar ~/.config/

# Nitrogen
cp -r nitrogen ~/.config/

# Picom
cp -r picom ~/.config/

# done
