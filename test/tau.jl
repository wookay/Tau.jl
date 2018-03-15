using Test
using Tau
using Base.MathConstants: φ

@test 2pi ≈ tau
@test 2π ≈ τ
@test isa(tau, Irrational{:τ})
@test 1.0 == cos(τ)
@test 2acos(-log(ℯ)) ≈ τ
@test real(4acos(log(im))) ≈ τ
@test imag(4log(im)) ≈ τ
@test 90 == rad2deg(τ/4)
@test 360 == rad2deg(τ)
@test 360/τ == rad2deg(1)
@test τ/360 == deg2rad(1)
@test 1/2φ ≈ cos(τ/5)
@test √(2+φ)/2 == sin(τ/5)
@test inv(φ-1) ≈ φ
