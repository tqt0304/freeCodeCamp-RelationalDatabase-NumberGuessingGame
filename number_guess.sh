#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# login
echo -e "\nEnter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  # register
  REG=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # login
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE user_id=$USER_ID")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# GAME
# ANSWER
ANSWER=$(( $RANDOM % 1000 + 1 ))
echo -e "\nGuess the secret number between 1 and 1000:"
COUNT=0
while read GUESS
do
  COUNT=$(( $COUNT + 1 ))
  if [[ ! $GUESS =~ ^[0-9]*$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $GUESS -gt $ANSWER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
  elif [[ $GUESS -lt $ANSWER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
  else
    echo -e "\nYou guessed it in $COUNT tries. The secret number was $ANSWER. Nice job!"
    break
  fi
done
# INSERT GAME INFORMATION
ADD_GAME_INFO=$($PSQL "INSERT INTO games(user_id, score) VALUES($USER_ID, $COUNT)")
