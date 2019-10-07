#! /bin/bash
# Joseph Fergen

usage(){
	echo "Program needs three integers"
	echo "The program will verify if these positive integers"
	echo "satisfy the Pythagorean property."
	echo "Given three integers a, b and c,"
	echo "the program will verify if"
	echo "a^2 + b^2 = c^2 or a^2 + c^2 = b^2 or b^2 + c^2 = a^2"
	exit
}

pythagorean(){
	a=`echo "$[$1 * $1]"`
	b=`echo "$[$2 * $2]"`
	c=`echo "$[$3 * $3]"`
	
	ab=`echo "$[$a + $b]"`
	ac=`echo "$[$a + $c]"`
	bc=`echo "$[$b + $c]"`

	if [ $ab -eq $c ]; then
		echo "Yes $1, $2 and $3 satisfy the Pythagorean property"
		exit
	fi

	if [ $ac -eq $b ]; then
		echo "Yes $1, $2 and $3 satisfy the Pythagorean property"
		exit
	fi
	
	if [ $bc -eq $a ]; then
		echo "Yes $1, $2 and $3 satisfy the Pythagorean property"
	else	
		echo "No $1, $2 and $3 do not satisfy the Pythagorean property"
	fi	
}	

if [ $# -ne 3 ]; then
	usage
fi

pythagorean $1 $2 $3 
