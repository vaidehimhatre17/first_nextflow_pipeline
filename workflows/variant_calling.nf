include { FASTQC }        from '../modules/fastqc.nf'
include { FASTP }         from '../modules/fastp.nf'
include { BWA_INDEX }     from '../modules/bwa_index.nf'
include { BWA_ALIGN }     from '../modules/bwa_align.nf'
include { SAMTOOLS_VIEW } from '../modules/samtools_view.nf'
include { SAMTOOLS_SORT } from '../modules/samtools_sort.nf'
include { BCFTOOLS_CALL } from '../modules/bcftools_call.nf'

workflow VARIANT_CALLING {

    // input reads
    reads = Channel.fromFilePairs(
        "${params.fastq_dir}/*_R{1,2}.fastq.gz",
        flat: true
    )

    // reference genome
    ref_ch = Channel.value(file(params.ref))

    FASTQC(reads)  //QC
             
    trimmed = FASTP(reads)     // trim

    indexed_ref = BWA_INDEX(ref_ch)

    sam = BWA_ALIGN(trimmed, indexed_ref)

    bam = SAMTOOLS_VIEW(sam)

    sorted_bam = SAMTOOLS_SORT(bam)

    BCFTOOLS_CALL(sorted_bam, ref_ch)
}

