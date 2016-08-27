NPM2NIX = npm2nix

.PHONY: update

update: node.nix

node.nix: pkgs.json
	$(NPM2NIX) pkgs.json node.nix
