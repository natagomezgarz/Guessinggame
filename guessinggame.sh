a=$( ls | wc -l)
echo "Try to guess how many files does this directory has (without counting the hiding files):"
read element
function guess {
	while [[ $element -ne $a ]]
        do
		if [[ $element =~ ^[1-9]+$ ]]  
		then
			if [[ $element -gt $a ]]
			then
				echo "too high"
				read element
			elif [[ $element -lt $a ]]
			then 
				echo "too low"
				read element
			fi
	        else 
        	        echo "please enter a number (remember that the number of files are positive)"
			read element
       		fi
	done
	echo "Congrats!"
}
guess
