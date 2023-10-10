module MyStatsPackage

using ProgressMeter
include("statistic_functions.jl")

export rse_sum, rse_mean, rse_std, rse_tstat, printOwner, printContributor

struct StatResult
    x::Vector
    n::Int64
    std::Float64
    tvalue::Float64
end

function StatResult(arg)
    n = length(arg)
    std = rse_std(arg)
    tvalue = rse_tstat(arg; σ = std, nn = n)
    return StatResult(arg, n, std, tvalue)
end


import Base.length

function length(arg::StatResult)
    return arg.n
end


end # module MyStatsPackage
