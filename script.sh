sizes=(8 16 32)

for program in $@
do	
	in_name=${program}.py
	out_name=$(echo ${program} | cut -d '.' -f 1 )
	
	python3 $in_name ${sizes[0]} > $out_name.out
	python3 $in_name ${sizes[1]} >> $out_name.out
	python3 $in_name ${sizes[2]} >> $out_name.out
done
