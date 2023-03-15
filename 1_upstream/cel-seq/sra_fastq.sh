for i in SRR*
do
	cd $i
	/root/software/sratoolkit.2.11.2-ubuntu64/bin/fastq-dump --split-files --gzip  --origfmt --defline-qual '+' /root/ccc/mouse/GSE112642/sra/$i/*.sra -O ../../fastq
	cd ../
done