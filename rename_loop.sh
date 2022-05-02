# rename contigs with strain name base and number them incrementally 

for file in *.fasta

do

 base=$(basename $file .fasta)
 echo $base
 
awk '/^>/{print ">${base} " ++i; next}{print}' < ${base}.fasta  > ../renamed_contigs/${base}_rename.fasta

 
done
