export Binarize

"""
$(TYPEDEF)

Represents a Binarized Layer.
"""
struct Binarize <: Layer
end

function Base.show(io::IO, p::Binarize)
    print(io, "Binarize()")
end

function apply(p::Binarize, x::Array{<:JuMPReal})
    output = x
    output[output.<0].= -1
    output[output.>=0].= 1
    return output
end

(p::Binarize)(x::Array{<:JuMPReal}) = apply(p, x)
