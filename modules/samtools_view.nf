process SAMTOOLS_VIEW {

input:
path sam

output:
path "aligned.bam"

script:
"""
$SAMTOOLS view -bS ${sam} > aligned.bam
"""
}

