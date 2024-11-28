{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.go
  ];

  shellHook = ''
    export GOPATH=$(pwd)/.go
  '';
}
