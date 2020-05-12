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
initBoard


echo "Enter Player1 Logo choice (X | O):"
read logo1

if (( logo1 == "x" || logo1 == "X" ))
then
	logo2="O"
else
	logo2="X"
fi
