process BWA_INDEX {

input:
path ref

output:
tuple path(ref), path("${ref}.*")

script:
"""
$BWA index ${ref}
"""
}

