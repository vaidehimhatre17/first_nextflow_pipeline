### Variant Calling Pipeline using Nextflow

The pipeline starts with raw sequencing reads and gradually processes them into variant call files. Each step helps clean the data, align it correctly to a reference genome, and detect genetic differences.



### Pipeline Flow

Paired-end FASTQ files
      ↓
FASTQC (raw reads)
      ↓
FASTP (trimming & filtering)
      ↓
BWA ALIGNMENT
      ↓
SAM → BAM
      ↓
SORT BAM
      ↓
VARIANT CALLING
      ↓
Raw VCF file



### Workflow Description

-- Quality Assessment (FastQC)
Evaluates the quality of raw sequencing reads to identify issues such as low base quality or adapter contamination.

-- Read Preprocessing (Fastp)
Performs adapter trimming and quality filtering to clean the reads before alignment.

-- Read Alignment (BWA-MEM2)
Maps the processed reads to a reference genome, generating alignment files.

-- Format Conversion (Samtools)
Converts SAM alignment files into compressed BAM format for efficient storage.

-- BAM Sorting (Samtools)
Sorts aligned reads by genomic coordinates, preparing them for variant analysis.

-- Variant Detection (BCFtools)
Identifies sequence variants such as SNPs and small indels and outputs them in VCF format.


### Running the Pipeline

-- git clone <repository_url>
-- cd <repository_directory>
-- conda env create -f environment.yml
-- conda activate bnf
-- nextflow run main.nf



### Requirements

-- Nextflow
-- Conda

