echo "Start: `date`"

FASP_ADDRESS="/home/ibmuser/.aspera/connect/etc/asperaweb_id_dsa.openssh -Tr -Q -l 100M -P33001 -L- fasp-g1k@fasp.1000genomes.ebi.ac.uk:vol1/ftp/release/20130502"
for CHR in $(seq 1 22); do
   FILE=ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
   echo "Downloading '$FILE'..."
   echo "ascp -i $FASP_ADDRESS/$FILE ./"
done

echo "End: `date`"
