#!/bin/sh
set -eu

_QUICK=${PRINT_QUICK:-FALSE}
_IN_BATTLE=${USE_IN_BATTLE:-FALSE}
_RANDOM=${ONLY_USE_IN_BATTLE:-FALSE}
_HUMAN=${HUMAN_NAME:-$(cure girl | shuf | head -n 1)}

_PRECURE=$(echo "${_HUMAN}" | cure tr '[:human_name:]' '[:precure_name:]')
_ID=$(echo "${_HUMAN}" | cure tr '[:human_name:]' '[:girl_name:]')

_q="-q"
case ${_QUICK} in
  "FALSE")
    _q=""
    ;;
esac

case ${_RANDOM} in
  "FALSE")
    if [[ $((${RANDOM} % 2)) -eq 0 ]]; then
      _a=""
    else
    case ${_IN_BATTLE} in
      "FALSE")
        _a=""
        ;;
      *)
        _a="-a"
        ;;
    esac
    fi
    ;;
  *)
    _a="-a"
    ;;
esac

cure echo ${_a} ${_q} -p "${_ID}"
echo ""
echo "by ${_HUMAN} / ${_PRECURE} (${_ID})"
