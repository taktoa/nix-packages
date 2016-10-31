NPM2NIX = npm2nix

.PHONY: update

update: node-packages.nix

node-packages.nix: pkgs.json
	$(NPM2NIX) pkgs.json node-packages.nix
