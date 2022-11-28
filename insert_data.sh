#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS  
do
#insert team...
# insert winner
if [[ $WINNER != "winner" ]]
then
INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
fi
# insert opponent
if [[ $OPPONENT != "opponent" ]]
then
INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
fi
#display a success message
if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
then
echo Insertion of team $OPPONENT successful
fi

#inserting game..
#get winner_id
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
#get opponent_id
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
#insert all to game
if [[ $YEAR != "year" ]]
then
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id,opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
then
echo Insertion of game successful
fi
fi
done
