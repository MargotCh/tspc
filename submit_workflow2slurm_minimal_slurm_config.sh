#!/bin/sh
#SBATCH --job-name="tspc-workflow-minimal"
#SBATCH --partition=cpu-single
#SBATCH --ntasks=1
#SBATCH --time=02:00:00
#SBATCH --mem=4gb

nextflow run /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/main.nf \
    --input /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/assets/samplesheet_minimal.csv \
    --outdir /gpfs/bwfor/work/ws/hd_dy329-tspc/test_data_tspc_workflow/output_nfcore_pipeline \
    -c /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/conf/slurm.config \
    -profile singularity
