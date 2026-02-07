process BWA_INDEX {

input:
path ref

output:
tuple path(ref), path("${ref}.*")

script:
"""
${params.BWA} index ${ref}
"""
}

