__iife() {
  unset __iife

  local curdir="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
  PATH="${curdir}/bin:${curdir}/.bin:${PATH}"
  ENVAR_NAME=vencoder

  PATH="${curdir}/vendor/.bin:${PATH}"
  export TESTDIR="${curdir}/tests"
} && __iife
