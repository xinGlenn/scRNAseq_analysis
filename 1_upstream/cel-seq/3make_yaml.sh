for i in fastq/*_1.fastq.gz
do
	file_name=${i##*/}
	file_prefix=${file_name%%_*}
	echo $file_prefix
	mkdir $file_prefix
	sed "s/example/$file_prefix/g" exam/example.yaml > ${file_prefix}"/"${file_prefix}".yaml"
done
