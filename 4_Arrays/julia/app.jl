include("ArrayModule.jl")

using .ArrayModule: DsArray

A = DsArray{Int}(5)
A[1] = 10
A[2] = 20
println(A[1], ", ", A[2])
