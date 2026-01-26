process CUTADAPT {

    publishDir "${params.output}/trimmed", mode: 'copy'

    input:
    path fastq_file

    output:
    path "${fastq_file.simpleName}.trimmed.fastq.gz"

    script:
    """
    cutadapt \
        -a ${params.adapter} \
        -o ${fastq_file.simpleName}.trimmed.fastq.gz \
        ${fastq_file}
    """
}
