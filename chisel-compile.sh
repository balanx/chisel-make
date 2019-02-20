#! /bin/bash

source ./config.chisel

compile=0

function process_args () {
while test $# -gt 0
do
  case "$1" in

    --compile|-c)
      compile=1
      shift
    ;;


    *)
      srcs="$srcs $1"
      shift

    ;;

  esac
done
}

process_args "$@"


if test "-$srcs-" = "--"
then
    echo "Usage :"
    echo "    ./chisel-compile.sh -c examples/GCD.scala"
    echo "    ./chisel-compile.sh examples.GCD"
    echo
    exit 1
fi

if test "-$compile-" = "-1-"
then
    mkdir -p ./classes
    scalac -classpath $SCLIB -d classes -feature $srcs
else
    scala  -classpath "classes;$SCLIB" $srcs
fi
