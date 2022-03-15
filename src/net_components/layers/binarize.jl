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

(p::Binarize)(x::Array{<:JuMPReal}) = binarize(x)
