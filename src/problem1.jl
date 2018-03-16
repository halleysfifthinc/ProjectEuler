export problem1
"""
    problem1(N=1000)

# Multiples of 3 and 5
## Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
"""
function problem1(N=1000)
    res = 0
    for i in 1:(N-1)
        (mod(i,3) == 0 || mod(i,5) == 0) && (res += i; true)
    end
    return res
end