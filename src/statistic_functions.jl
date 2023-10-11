"""

function rse_sum(arg)

Sums the entries of the argument. 

# Arguments 
 - arg : a list of numbers 
# Output 
  - sum : a number 

# Example 

```julia-repl
julia> rse_sum(1:3)
6
\```

"""
function rse_sum(arg)
    sum = 0
    for i = 1:length(arg)
        sum = sum + arg[i]
    end
    return sum
end

"""

function rse_mean(arg)

Computes the mean of the entries of arg 

# Arguments 
    - arg : a list of numbers 
# Output 
    - mean : a number  

# Example 
```julia-repl
julia> rse_mean(1:3)
2
\```
"""
function rse_mean(arg)
    return rse_sum(arg) / length(arg)
end

"""

function rse_std(arg)

Computes the standard deviation of the entries of arg 

# Arguments 
    - arg : a list of numbers 
# Output 
    - std : a number   

# Example 
```julia-repl
julia> rse_std(1:3)
1
\```
"""
function rse_std(arg)
    return sqrt(sum((arg .- rse_mean(arg)) .^ 2) / (length(arg) - 1))
end

"""

function rse_tstat(arg)

Computes the t statistic value of the entries of arg 

# Arguments 
    - arg : a list of numbers 
# Output 
    - tvalue : a number   

# Example 
```julia-repl
julia> rse_tstat(1:3)
3.464101615137754
\```
"""
function rse_tstat(arg; σ = rse_std(arg), nn = length(arg))
    return rse_mean(arg) / (σ / sqrt(nn))

end

function printOwner()
    println("https://github.com/aarondanielphysics")
end


function printContributor()
    println("https://github.com/marcelojbp")
end
