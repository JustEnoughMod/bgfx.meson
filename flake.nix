{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      lastModifiedDate =
        self.lastModifiedDate or self.lastModified or "19700101";
      version = builtins.substring 0 8 lastModifiedDate;

      supportedSystems =
        [ "x86_64-linux" "aarch64-linux" ];

      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });
    in {
      overlay = final: prev: {

        JustEnoughMod = with final;
          stdenv.mkDerivation rec {
            pname = "JustEnoughMod";
            inherit version;

            src = ./.;

            enableParallelBuilding = true;

            nativeBuildInputs = [ pkg-config meson ninja ccache ];
            buildInputs = [
              mesa
              libGL
              xorg.libX11
              xorg.libxcb
            ];
          };

      };

      packages = forAllSystems
        (system: { inherit (nixpkgsFor.${system}) JustEnoughMod; });

      defaultPackage =
        forAllSystems (system: self.packages.${system}.JustEnoughMod);

      nixosModules.JustEnoughMod = { pkgs, ... }: {
        nixpkgs.overlays = [ self.overlay ];

        environment.systemPackages = [ pkgs.JustEnoughMod ];
      };
    };
}
