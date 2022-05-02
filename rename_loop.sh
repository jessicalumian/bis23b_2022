# rename contigs with strain name base and number them incrementally
# -v passes the shell variable to awk! cool!

for file in *.fasta

do

 base=$(basename $file .fasta)
 echo $base
 
 
awk -v b=$base '/^>/{print ">"b " " ++i; next}{print}' < ${base}.fasta  > ../renamed_contigs/${base}_rename.fasta

done
