include { FASTQC }    from '../modules/fastqc'
include { FASTP }     from '../modules/fastp'
include { BWA_INDEX } from '../modules/bwa_index'
include { BWA_ALIGN } from '../modules/bwa_align'

workflow VARIANT_CALLING {

    reads = Channel.fromFilePairs(
        "${params.fastq_dir}/*_R{1,2}.fastq.gz",
        flat: true
    )

    ref_ch = Channel.value( file(params.ref) )

    FASTQC(reads)
    trimmed = FASTP(reads)

    indexed_ref = BWA_INDEX(ref_ch)
    BWA_ALIGN(trimmed, indexed_ref)
}

