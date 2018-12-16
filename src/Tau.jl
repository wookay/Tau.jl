module Tau

export tau, τ

# julia/base/irrationals.jl
macro irrational_tau(sym, def)
    esym = esc(sym)
    qsym = esc(Expr(:quote, sym))
    quote
        const $esym = Irrational{$qsym}()
        Base.BigFloat(::Irrational{$qsym}) = big(2pi)
        Base.Float64(::Irrational{$qsym}) = 2pi
        Base.Float32(::Irrational{$qsym}) = Float32(2pi)
        @assert isa(big($esym), BigFloat)
        @assert Float64($esym) == Float64(big($esym))
        @assert Float32($esym) == Float32(big($esym))
    end
end

@irrational_tau τ tau

"""
    tau
    τ

The constant τ.

```jldoctest
julia> tau
τ = 6.283185307179585...
```
"""
τ, const tau = τ

end # module
