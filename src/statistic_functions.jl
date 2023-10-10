function rse_sum(arg)

    ## function that sums the entries of a vector 

    sum = 0
    for i in 1:length(arg)
        sum = sum + arg[i]
    end 
    return sum 
end


function rse_mean(arg)

    ## function that calculates the mean of a list of numbers given in a vector 

    return res_sum(arg)/length(arg)
end

function rse_std(arg)

    ## function that calculates the standard deviation (std) of the entries of a vector 
    return sqrt(sum((arg .- res_mean(arg)).^2)/(length(arg)-1))
end

function rse_tstat(arg; σ = rse_std(arg), nn = length(arg) )
    return rse_mean(arg) / ( σ /sqrt(nn) )

end
