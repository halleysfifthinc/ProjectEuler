using ProjectEuler
using Base.Test, BenchmarkTools

files = readdir(@__DIR__)
sort!(files)

@testset "Testing all existing problems" begin
    @testset "Testing problem $i" for i in 1:(length(files)-1)
        include(files[i])
    end
end

