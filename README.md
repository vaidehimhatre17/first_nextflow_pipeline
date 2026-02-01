# Variant Calling Pipeline using Nextflow (DSL2)

This repository contains a modular variant calling pipeline implemented using Nextflow DSL2.
The pipeline processes raw paired-end sequencing reads and produces variant call files (VCF).


## Pipeline Overview

The workflow follows standard bioinformatics best practices to ensure accurate variant detection.

### Pipeline Flow

Paired-end FASTQ files
        ↓
FastQC (raw reads)
        ↓
Fastp (adapter trimming & quality filtering)
        ↓
BWA-MEM2 (read alignment)
        ↓
SAM to BAM conversion
        ↓
Sorted BAM
        ↓
Variant Calling (BCFtools)
        ↓
Raw VCF file


## Workflow Description

### 1. Quality Control (FastQC)
Assesses the quality of raw sequencing reads and identifies issues such as low base quality,
adapter contamination, and GC bias.

### 2. Read Preprocessing (Fastp)
Performs adapter trimming and quality filtering to improve read quality before alignment.

### 3. Read Alignment (BWA-MEM2)
Aligns cleaned paired-end reads to a reference genome, generating SAM alignment files.

### 4. Format Conversion (Samtools)
Converts SAM files to BAM format for efficient storage and processing.

### 5. BAM Sorting (Samtools)
Sorts BAM files by genomic coordinates, which is required for downstream variant calling.

### 6. Variant Calling (BCFtools)
Identifies sequence variants such as SNPs and small indels and outputs them in VCF format.


## Project Directory Structure

variant_calling_pipeline/
├── main.nf
├── nextflow.config
├── modules/
│   ├── fastqc.nf
│   ├── fastp.nf
│   ├── bwa_index.nf
│   ├── bwa_align.nf
│   ├── samtools_sort.nf
│   ├── bcftools_call.nf
│   └── bcftools_filter.nf
├── workflows/
│   └── vc_workflow.nf
├── data/
│   ├── raw/
│   └── ref/
└── results/


## Running the Pipeline

Clone the repository:
git clone <repository_url>
cd <repository_directory>

Create and activate the conda environment:
conda env create -f environment.yml
conda activate bnf

Run

