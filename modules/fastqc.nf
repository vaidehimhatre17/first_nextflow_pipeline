process FASTQC {

    publishDir "${params.output}/fastqc", mode: 'copy'

    input:
    path fastq_file

    output:
    path "*_fastqc*"

    script:
    """
    fastqc ${fastq_file}
    """
}
