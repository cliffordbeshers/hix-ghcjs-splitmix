{
  description = "A Haskell project";
  inputs.hix.url = "github:tek/hix";
  outputs = {hix, ...}: hix.lib.flake {
    packages = {
      hello-ghcjs = {
        src = ./.;
        description = "Demonstrate a build bug somewhere in the haskell.nix ghcjs build chain,";
        cabal = {
          author = "Clifford Beshers";
          build-type = "Simple";
          license = "BSD-3-Clause";
          version = "0.0.1";
          meta = {
            maintainer = "Clifford Beshers <clifford.beshers@gmail.com>";
            homepage = "https://github.com/cliffordbeshers/hix-ghcjs-splitmix/";
            synopsis = "A simple hix/ghcjs that fails to build";
          };
        };
        executables.hello = {
          source-dirs = "src";
        };
      };
    };
  };
}
