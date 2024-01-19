def merge_sort(arr)
    if (arr.length() == 1)
        return arr
    else
        mid = arr.length / 2

        # sort left half
        left_half = arr[0...mid]
        left_sorted = merge_sort(left_half)
        
        # sort right half
        right_half = arr[mid..arr.length()]
        right_sorted = merge_sort(right_half)

        # merge
        merge(left_sorted, right_sorted)
    end
end

def merge(left, right)
    result = []
    left_idx, right_idx = 0, 0

    # Loop to compare which sides number is bigger, then merge
    while left_idx < left.length && right_idx < right.length
        if left[left_idx] < right[right_idx]
            result << left[left_idx]
            left_idx += 1
        else
            result << right[right_idx]
            right_idx += 1
        end
    end

    if left_idx < left.length
        result.concat(left[left_idx..]) 
    end
    if right_idx < right.length
        result.concat(right[right_idx..]) 
    end

    return result
end


arr = [3, 2, 1, 13, 8, 5, 0, 1]

puts "Ex.array: [0, 1, 1, 2, 3, 5, 8, 13]"
print "My array: "
p merge_sort(arr)

arr2 = [105, 79, 100, 110]

puts "Ex.array: [79, 100, 105, 110]"
print "My array: "
p merge_sort(arr2)