{pkgs, ...}: {
  # name = "project-name";
  compiler-nix-name = "ghc982"; # Version of GHC to use

  # Cross compilation support:
  crossPlatforms = p: pkgs.lib.optionals pkgs.stdenv.hostPlatform.isx86_64 ([
    p.ghcjs
  ]);

  modules = [
    ({
      packages.js-th-repro.components.library.build-tools = [
        # config.hsPkgs.ghci
        pkgs.pkgsBuildHost.nodejs
      ];
    })
  ];

  # Tools to include in the development shell
  shell.tools.cabal = "latest";
  # shell.tools.hlint = "latest";
  # shell.tools.haskell-language-server = "latest";
}
