def fibs(n)
    if n <= 1
        return 0
    end
    sum = [0, 1]
    (n - 1).times do
        sum.push(sum[-1] + sum[-2])
    end
    return sum[-1]
end

def fibs_rec(n, sum=[0, 1])
    return sum[-1] if n == 1
    return fibs_rec((n-1), sum.push(sum[-1] + sum[-2]))
end