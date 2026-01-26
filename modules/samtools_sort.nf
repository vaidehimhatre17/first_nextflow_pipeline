process SAMTOOLS_SORT {

    publishDir "${params.output}/align", mode: 'copy'

    input:
    path sam

    output:
    path "sample_sorted.bam"

    script:
    """
    samtools view -bS ${sam} | samtools sort -o sample_sorted.bam

    """
}
