.PHONY: switch
switch:
	home-manager switch --flake .#lemonadern

.PHONY: news
news:
	home-manager news --flake .#lemonadern

.PHONY: gc
gc:
	nix store gc

