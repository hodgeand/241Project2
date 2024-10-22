sizes=(8 16 32)

for program in $@
do	
	python3 $program ${sizes[0]} > $program.out
	python3 $program ${sizes[1]} >> $program.out
	python3 $program ${sizes[2]} >> $program.out
done
