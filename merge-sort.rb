def merge_sort(n)
    if n.length < 2
        return n
    end
    center = (n.length - 1) / 2.round()
    left_half = merge_sort(n[..center])
    right_half = merge_sort(n[(center + 1)..])
    return merge(left_half, right_half)
end

def merge(left_half, right_half)
    merge_arr = []
    until left_half.empty? || right_half.empty?
        if left_half[0] < right_half[0]
            merge_arr.push(left_half.shift)
        else
            merge_arr.push(right_half.shift)
        end
    end
    until left_half.empty?
        merge_arr.push(left_half.shift)
    end
    until right_half.empty?
        merge_arr.push(right_half.shift)
    end
    return merge_arr
end