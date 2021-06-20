#!/usr/bin/env bash
# File: test.sh

function ask {
  echo "How many files are in the current directory?"
  echo "Type a number and press Enter:"
  read response
}


echo "Let's start a quiz!"
ask

while [[ $response -ne $(ls -1 | wc -l) ]]
do
  echo "Wrong Answer!"
  echo "Try again."
  ask
done

echo "Right answer!"
echo "Congratulations!"