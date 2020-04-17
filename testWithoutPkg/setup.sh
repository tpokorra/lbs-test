#!/bin/bash

echo "Hello World"
echo "Unicode issue: ✔  Verified Cypress!"

for i in {1..10}
do
  echo test $i
  sleep 5
done

exit -1
