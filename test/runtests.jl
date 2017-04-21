using Tau
using Base.Test

@test 2pi == tau
@test 2π == τ
@test isa(tau, Irrational{:τ})
@test 1.0 == cos(τ)
@test 2acos(-log(e)) == τ
@test real(4acos(log(im))) == τ
@test imag(4log(im)) == τ
@test 360 == rad2deg(τ)
@test 360/τ == rad2deg(1)
@test τ/360 == deg2rad(1)
