nextflow.enable.dsl = 2

// Import the same module TWICE with different aliases
include { FASTQC as FASTQC_RAW }     from '../modules/fastqc.nf'
include { FASTQC as FASTQC_TRIMMED } from '../modules/fastqc.nf'
include { CUTADAPT }                 from '../modules/cutadapt.nf'

workflow TRIM_AND_QC {

    // Channel containing all FASTQ files
    Channel
        .fromPath("${params.fastq_dir}/*.fastq.gz")
        .set { reads }

    // FastQC on raw reads
    FASTQC_RAW(reads)

    // Adapter trimming
    trimmed = CUTADAPT(reads)

    // FastQC on trimmed reads
    FASTQC_TRIMMED(trimmed)
}

