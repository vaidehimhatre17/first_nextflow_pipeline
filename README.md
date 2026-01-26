# Variant Calling Pipeline (Nextflow DSL2)

This repository contains a student-level variant calling pipeline implemented using Nextflow DSL2.


# Pipeline Steps

The current pipeline performs the following steps:

1. Raw read quality control (FastQC)
   - Assesses sequencing quality before trimming

2. Adapter trimming and quality filtering (Cutadapt)

   - Removes Illumina adapter sequences
   - Improves read quality and alignment accuracy

3. Post-trimming quality control (FastQC)
   - Confirms improvement in read quality after preprocessing

###
Temporary and output directories such as work/, results/, and .nextflow/ are excluded using .gitignore.



# Configuration

Pipeline parameters are defined in nextflow.config:

* fastq_dir – directory containing input FASTQ files
* output – base directory for pipeline results
* adapter – adapter sequence used for trimming (Illumina universal adapter)


## Input

- Single-end FASTQ files


## Output

The pipeline generates results in the `results/` directory:

- FastQC reports (HTML and ZIP files)
- Trimmed FASTQ files ready for downstream analysis
