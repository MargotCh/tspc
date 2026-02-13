#!/bin/sh
#SBATCH --job-name="tspc-workflow-wsi"
#SBATCH --partition=cpu-single
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#SBATCH --mem=24gb

nextflow run /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/main.nf \
    --input /gpfs/bwfor/work/ws/hd_dy329-tspc/test_data_wsi_tspc_workflow/samplesheet_nsclc.csv \
    --outdir /gpfs/bwfor/work/ws/hd_dy329-tspc/test_data_wsi_tspc_workflow/output_nfcore_pipeline \
    -c /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/nextflow.config \
    -profile singularity,gpu \
    -resume
