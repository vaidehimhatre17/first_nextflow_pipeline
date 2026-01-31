process SAMTOOLS_SORT {

input:
path bam

output:
path "aligned.sorted.bam"

script:
"""
$SAMTOOLS sort ${bam} -o aligned.sorted.bam
"""
}

