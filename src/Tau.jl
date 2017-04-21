__precompile__()

module Tau

export tau, τ

const τ = Irrational{:τ}()
Base.convert(::Type{BigFloat}, ::Irrational{:τ}) = BigFloat(2pi)
Base.convert(::Type{Float64}, ::Irrational{:τ}) = 2pi
Base.convert(::Type{Float32}, ::Irrational{:τ}) = Float32(2pi)

"""
    tau
    τ

The constant τ.

```jldoctest
julia> tau
τ = 6.283185307179586...
```
"""
const tau = τ

Base.:(==)(::Irrational{:τ}, y::Float64) = 2pi == y
Base.:(==)(x::Float64, ::Irrational{:τ}) = x == 2pi

end # module
