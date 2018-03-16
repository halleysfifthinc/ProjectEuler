__precompile__()

module ProjectEuler

files = readdir(@__DIR__)
sort!(files)

for i in 2:length(files)
    include(files[i])
end

end # module
