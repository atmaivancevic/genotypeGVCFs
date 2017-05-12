#!/bin/bash

# Example usage:
# PREFIX=Kruer_WESMarch2017 INDIR=/fast/users/a1211880/vcf/gVcfDumpingGround OUTDIR=/data/neurogenetics/variants/gvcf sbatch GATKGenoRecal.split.q -J GATKGeno

#SBATCH -A robinson
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --time=3-00:00
#SBATCH --mem=50GB

# Notification configuration 
#SBATCH --mail-type=END                                         
#SBATCH --mail-type=FAIL                                        
#SBATCH --mail-user=atma.ivancevic@adelaide.edu.au

# load modules
module load Java/1.8.0_121
module load HTSlib/1.3.1-GCC-5.3.0-binutils-2.25

# run the executable
./GATKv3.x.VCFGenotypeRecal.split.HPC.pipeline.sh -p $PREFIX -i $INDIR -o $OUTDIR
