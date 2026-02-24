#!/bin/sh
#SBATCH --job-name="tspc-workflow-wsi"
#SBATCH --partition=gpu-single
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:A40:1
#SBATCH --time=4:00:00
#SBATCH --mem=236gb

nextflow run /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/main.nf \
    --input /gpfs/bwfor/work/ws/hd_dy329-tspc/test_data_wsi_tspc_workflow/samplesheet_nsclc.csv \
    --outdir /gpfs/bwfor/work/ws/hd_dy329-tspc/test_data_wsi_tspc_workflow/output_nfcore_pipeline \
    --do_backsub false \
    -c /gpfs/bwfor/work/ws/hd_dy329-tspc/RemoveMe/tanevskilab-tspc/nextflow.config \
    -profile singularity,gpu \
    -resume
