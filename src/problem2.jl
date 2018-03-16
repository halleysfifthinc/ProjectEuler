export problem2

"""
  problem2(N=4e6)

# Problem 2
## Even Fibonacci numbers

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
"""
function problem2(N=4e6)
  n = 0
  f = 0
  s = 0

  while f < N
    n += 3
    s += f
    f = fib(n)
  end
  return s
end

function fib(n::Int)
  n < 0 && return 0
  n < 2 && return n
  a = 1
  b = 0
  c = 0

  while n > 2
    n -= 1
    c = a
    a += b
    b = c
  end

  return a+b
end
