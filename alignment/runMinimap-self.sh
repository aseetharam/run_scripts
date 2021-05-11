#!/bin/bash
source /work/LAS/mhufford-lab/arnstrm/miniconda/etc/profile.d/conda.sh
conda activate ngmlr
if [ "$#" -ne 1 ] ; then
echo "please provide:"
echo -e "\t\t genome in fasta format"
echo "";
echo "runMinimap-self.sh genome.fasta" ;
echo "";
exit 0;
fi
genome=$1
out=$(basename ${genome%.*})
minimap2 -xasm5 -DP -o ${out}_self.paf -t 36 $genome $genome
