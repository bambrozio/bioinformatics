echo "Start: `date`"

FTP_SITE=ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502
for CHR in $(seq 1 22); do
   FILE=$FTP_SITE/ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
   echo "File '$FILE' downloading..."
   curl -O $FILE
done

echo "End: `date`"