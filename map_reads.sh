#!/bin/bash

#SBATCH --time=00:30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --mem=500mb
#SBATCH --partition=short
#SBATCH --job-name=map_reads

# modules

# set input and output paths
genome_path="genome/Hgry"
input_R1_path="raw/$1_unmapped_reads_R1 ... "
input_R2_path=
mapped_path=
stats_path=

# map reads to reference genome
bwa mem ${genome_path}

# generate mapping statistics
