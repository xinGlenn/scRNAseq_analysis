for i in SRR*
do
	cd $i
	/root/software/zUMIs/zUMIs.sh -c -y ${i}".yaml"
	cd ..
done
