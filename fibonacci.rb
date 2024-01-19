def fibs(n)
    fib_sequence = [0, 1] # Prime the start of the array

    (2...n).each do |i|
        fib_sequence << fib_sequence[i - 1] + fib_sequence[i - 2]
    end

    return fib_sequence
end

result = fibs(8)
print result



def fibs_rec(n, fib_sequence = [0, 1])
    if (n <= 2)
        return fib_sequence 
    end

    fibs_rec(n - 1, fib_sequence << fib_sequence[-1] + fib_sequence[-2])
end
  
result_rec = fibs_rec(8)
print result_rec