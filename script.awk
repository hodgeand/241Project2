BEGIN{
	FS = ","
	OFS = ""
}

$0 ~ NR != 1 {total_accidents += 1}
$3 >= 2 && NR != 1 {mult_cars += 1}
($13 == 1 || $13 == 2) && NR != 1 {Jan_feb += 1}
$1 == 26 && NR != 1 {total_MI += 1}
$1 == 26 && $3 >=2 && NR != 1 {mult_MI += 1}
$1 == 26 && ($13 == 1 || $13 == 2) && NR != 1 {Jan_feb_MI += 1}
NR != 1 {drunk[$1] += $52}

END{
	print "Multiple Vehicles Proportion: ", (mult_cars / total_accidents)
	print "Jan/Feb Proportion: ", (Jan_feb / total_accidents)
	print "MI Multiple Vehicles Proportion: " (mult_MI / total_MI)
	print "MI Jan/Feb Proportion: " (Jan_feb_MI / total_MI)
	print "State Code,# DD"
	for (state in drunk) print state, ",", drunk[state]

	
}
