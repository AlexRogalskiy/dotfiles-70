#!/bin/sh

sh <(curl -L https://nixos.org/nix/install) --daemon
./tools/symlink
