process BWA_ALIGN {

    input:
    tuple val(sample_id), path(r1), path(r2)
    tuple path(ref), path(index_files)

    output:
    path "aligned.sam"

    script:
    """
    bwa-mem2 mem ${ref} ${r1} ${r2} > aligned.sam
    """
}

