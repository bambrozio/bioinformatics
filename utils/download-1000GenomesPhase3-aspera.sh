echo "Start: `date`"

USER=$(whoami)
# ADD -L- after -P33001 for full aspera logs
FASP_ADDRESS="/home/$USER/.aspera/connect/etc/asperaweb_id_dsa.openssh -Tr -Q -l 100M -P33001 fasp-g1k@fasp.1000genomes.ebi.ac.uk:vol1/ftp/release/20130502"
for CHR in $(seq 1 22); do
   FILE=ALL.chr$CHR.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
   echo "`date` Downloading '$FILE'..."
   ascp -i $FASP_ADDRESS/$FILE ./
   echo "`date` '$FILE' Downloaded!"
   echo "`date` Downloading '$FILE.tbi'..."
   ascp -i $FASP_ADDRESS/$FILE.tbi ./
   echo "`date` '$FILE.tbi' Downloaded!"
done

echo "End: `date`"
