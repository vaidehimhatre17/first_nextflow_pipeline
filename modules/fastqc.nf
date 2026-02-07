process FASTQC {

input:
tuple val(sample_id), path(r1), path(r2)

output:
path "*_fastqc.zip"

script:
"""
${params.FASTQC} ${r1} ${r2}
"""
}

