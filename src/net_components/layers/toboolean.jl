export ToBoolean

"""
$(TYPEDEF)

Represents a Boolean Layer.
"""
struct ToBoolean <: Layer
end

function Base.show(io::IO, p::ToBoolean)
    print(io, "ToBoolean()")
end

function apply(p::ToBoolean, x::Array{<:JuMPReal})
    output = x
    output[output.==-1].= 0
    return output
end

(p::ToBoolean)(x::Array{<:JuMPReal}) = apply(p, x)
