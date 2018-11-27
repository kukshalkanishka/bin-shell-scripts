#! /bin/bash
echo "Check test before doing commit"
mocha --reporter min > .log
status=$?
rm .log
if [ $status != 0 ]; then
  mocha --reporter min
  exit 1;
fi
