def fibs(n)
    fib_sequence = [0, 1] # Prime the start of the array

    (2...n).each do |i|
        fib_sequence << fib_sequence[i - 1] + fib_sequence[i - 2]
    end

    return fib_sequence
end



result = fibs(8)
print result