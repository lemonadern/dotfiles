# Install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# Install home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# Make switch
home-manager switch --extra-experimental-features nix-command --extra-experimental-features flakes --flake .#lemonadern

