# RNA-seq Nextflow Pipeline

This is a beginner-friendly RNA-seq preprocessing pipeline built using Nextflow DSL2.

The pipeline performs basic quality control and adapter trimming on FASTQ files.

## What This Pipeline Does

This pipeline performs three standard preprocessing steps:

1. FastQC on raw reads  
   FastQC evaluates the quality of raw FASTQ files and provides reports on base quality, GC content, and adapter contamination.

2. Adapter trimming using Cutadapt 
   Adapter sequences introduced during library preparation are removed.  
   This step improves read quality and ensures more accurate alignment to the reference genome.

3. FastQC on trimmed reads
   Quality control is repeated after trimming to verify that adapter contamination and poor-quality bases have been removed.


## Input

- Single-end FASTQ files


## Output

The pipeline generates results in the `results/` directory:

- FastQC reports (HTML and ZIP files)
- Trimmed FASTQ files ready for downstream analysis
