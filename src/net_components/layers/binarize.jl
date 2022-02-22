export Binarize

"""
$(TYPEDEF)

Represents a Normalization operation.
"""
struct Binarize <: Layer
end

function Base.show(io::IO, p::Normalize)
    print(io, "Binarize()")
end

function apply(p::Normalize, x::Array{<:JuMPReal})
    output = x
    output[output.<0].= -1
    output[output.>=0].= 1
    return output
end

(p::Normalize)(x::Array{<:JuMPReal}) = apply(p, x)
