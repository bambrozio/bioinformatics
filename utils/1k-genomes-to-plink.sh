echo "Start: `date`"

# Using "--max-alleles 2", otherwise: "error .bim cannot contain multiallelic variants".
# Details & alternative: https://groups.google.com/forum/#!searchin/plink2-users/bim$20cannot$20contain$20multiallelic$20variants%7Csort:date/plink2-users/lD612NnIZXQ/WbLHctbjBQAJ
for CHR in $(seq 1 22); do
  echo "`date` Converting ALL.chr$CHR ..."
  plink2 --vcf ../1k-genome-p3.gz/ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz --make-bed --max-alleles 2 --out ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes
  echo "`date` ALL.chr$CHR Done!"
done

echo "End: `date`"
