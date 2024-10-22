sizes=(8, 16, 32)


for program in $@
do	
	for i in sizes
	do
		python3 $program i
	done
done
