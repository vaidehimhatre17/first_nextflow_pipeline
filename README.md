## RNA-seq Variant Calling Pipeline (Nextflow DSL2)

This repository contains a modular Nextflow (DSL2) pipeline for performing basic quality control, read trimming, reference indexing, and alignment as part of a variant-calling workflow.

The pipeline is designed for paired-end FASTQ data.

## Pipeline Overview

The workflow performs the following steps:

- Quality control of raw paired-end reads using FastQC

- Read trimming using FastP

- Reference genome indexing using BWA-MEM2

- Alignment of trimmed reads to the reference genome

## 

FASTQC: Performs quality control analysis on paired-end FASTQ files to assess read quality before downstream processing.

FASTP: Trims and filters paired-end reads to remove low-quality bases and adapters while preserving sample pairing.

BWA_INDEX: Indexes the reference genome using BWA-MEM2 to prepare it for efficient read alignment.

BWA_ALIGN: Aligns trimmed paired-end reads to the indexed reference genome and produces alignment files.


## Note
The pipeline will be extended with SAMtools and BCFtools to perform post-alignment processing and variant calling from the aligned reads
