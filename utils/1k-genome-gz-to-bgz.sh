echo "Start: `date`"
for CHR in $(seq 1 22); do
  echo "`date` Converting ALL.chr$CHR ..."
  gunzip -c ../1k-genome-p3.gz/ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf | bgzip  > ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.bgz
  echo "`date` ALL.chr$CHR Done!"
done