#!/bin/bash
source /work/LAS/mhufford-lab/arnstrm/miniconda/etc/profile.d/conda.sh
conda activate ngmlr
if [ "$#" -ne 2 ] ; then
echo "please provide:"
echo -e "\t\t(1) genome in fasta format"
echo -e "\t\t(2) ccs reads in fasta format"
echo "";
echo "runMinimap-ccs.sh genome.fasta ccs.fasta" ;
echo "";
exit 0;
fi
genome=$1
ccs=$2
minimap2 -t 36 -x asm20 -o ${genome%.*}_ccs-mapped.paf $genome $ccs
