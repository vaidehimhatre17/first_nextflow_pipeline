process BCFTOOLS_CALL {

input:
path bam
path ref

output:
path "sample_raw.vcf"

script:
"""
${params.BCFTOOLS} mpileup -f ${ref} ${bam} | \
${params.BCFTOOLS} call -mv --ploidy 1 -Ov -o sample_raw.vcf
"""
}

