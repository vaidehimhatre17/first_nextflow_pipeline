process FASTP {

    input:
    tuple val(sample_id), path(r1), path(r2)

    output:
    tuple val(sample_id),
          path("R1_trimmed.fastq.gz"),
          path("R2_trimmed.fastq.gz")

    script:
    """
    fastp \
      -i ${r1} \
      -I ${r2} \
      -o R1_trimmed.fastq.gz \
      -O R2_trimmed.fastq.gz
    """
}

