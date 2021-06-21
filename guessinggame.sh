#!/usr/bin/env bash
# File: guessinggame.sh

function ask {
  echo "How many files are in the current directory?"
  echo "Type a number and press Enter:"
  read response
}


echo "Let's start a quiz!"
ask

while [[ $response -ne $(ls -1F | grep -v / | wc -l) ]]
do
  if [[ $response -gt $(ls -1F | grep -v / | wc -l) ]]
  then
    echo "Too high"
  else
    echo "Too low"
  fi
  echo "Wrong Answer!"
  echo "Try again."
  ask
done

echo "Right answer!"
echo "Congratulations!"
