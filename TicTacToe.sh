 initBoard() {
	for (( row=0; row<ROWS; row++ ))
	do
		for (( column=0; column<COLUMNS; column++ ))
		do
			if [[ $row -eq $fill_row && $column -eq $fill_column ]]
			then
				gameBoard[$row, $column]=$fill_symbol;
			else
				gameBoard[$row, $column]=$placeHolder;
			fi
		done
	done
}



 printBoard() {
	printf "\n~ Tic Tac Toe ~"
	printf "\n-------------\n"
	for (( row=0; row<ROWS; row++ ))
	do
		for ((column=0; column<COLUMNS; column++ ))
		do
			printf "| ${gameBoard[$row, $column]} "
		done
		printf "|\n-------------\n"
	done
}




function Toss()
{
check=$(($RANDOM%2))
if (( $check == 1 ))
then
	echo $check
else
	echo $check
fi

}



initBoard
printBoard



echo "Enter Player1 Logo choice (X | O):"
read logo1

if (( logo1 == "x" || logo1 == "X" ))
then
	logo2="O"
else
	logo2="X"
fi


echo "Let's Toss (Enter) :"
read a


t="$( Toss )"


if (( $t==0 ))
then 
	echo "Player1 Win the toss "
else
	echo "Player2 Win the toss "
fi
