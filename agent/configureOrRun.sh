#!/bin/bash
work_dir="$DIR/_works/$(hostname)"

if ! [ -d $work_dir ]; then
  echo Executing agent config...
  . $DIR/configureAndRun.sh
else
  echo Executando background agent...
  . $DIR/runAgent.sh
fi