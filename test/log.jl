using Base.Test
using Tau

@test abs(log(complex(-1))) ≈ τ/2 ≈ pi
@test rad2deg(angle(log(complex(-1)))) == rad2deg(τ/4) == 90
