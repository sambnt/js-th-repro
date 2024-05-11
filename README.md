# JS TH Quasiquote Issue Reproduction

- Quasiquoting doesn't seem to work when using the JS backend of ghc-9.8.2.

The error thrown is:

```
<no location info>: error:
    JS interpreter: couldn't find "ghci" package
```

This comes from:

https://gitlab.haskell.org/ghc/ghc/-/blob/ffe3e5c1e3868bb23bc1ce24dd671729d387f723/compiler/GHC/Runtime/Interpreter/JS.hs#L169

I need to find some way of including the ghci package so ghc can find it.

## Run

```
nix build .#"javascript-unknown-ghcjs:js-th-repro:lib:js-th-repro"
OR
nix develop
javascript-unknown-ghcjs-cabal build lib:js-th-repro
```
