process FASTQC {

    input:
    tuple val(sample_id), path(r1), path(r2)

    output:
    path "*_fastqc.*"

    script:
    """
    fastqc ${r1} ${r2}
    """
}

