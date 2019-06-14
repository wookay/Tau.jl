using Jive
@If VERSION >= v"1.3.0-DEV.387" module test_tau_trig

using Test
using Tau

@test 1/τ == inv(τ) == 0.15915494309189535
@test 1/pi == inv(pi) == 0.3183098861837907

end # module test_tau_trig
