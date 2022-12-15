#!/bin/bash

#SBATCH --time=00:30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --mem=500mb
#SBATCH --partition=short
#SBATCH --job-name=map_reads_array
#SBATCH --array=1-24

# define sample_number variable and assign it the slurm array job task ID
sample_number=${SLURM_ARRAY_TASK_ID}

# modules

# set input and output paths

# map reads to reference genome
bwa mem ${genome_path}

# generate mapping statistics