{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    systems = ["aarch64-darwin" "x86_64-linux"];
    forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f system);
  in {
    packages = forEachSystem (system: {
      default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [
            ./configuration.nix
          ];
        }).neovim;
    });

    devShells = forEachSystem (system: {
      default = nixpkgs.legacyPackages.${system}.mkShell {
        buildInputs = with nixpkgs.legacyPackages.${system}; [
          nix
          gh
        ];
      };
    });

    formatter = forEachSystem (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
