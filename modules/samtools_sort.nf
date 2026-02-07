process SAMTOOLS_SORT {

input:
path bam

output:
path "aligned.sorted.bam"

script:
"""
${params.SAMTOOLS} sort ${bam} -o aligned.sorted.bam
"""
}

