process BWA_INDEX {

    input:
    path ref

    output:
    tuple path(ref), path("${ref}.*")

    script:
    """
    bwa-mem2 index ${ref}
    """
}

