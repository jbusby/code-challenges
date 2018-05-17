def solution(a)
  return 1 unless a.kind_of?(Array)
  if a.length <= 1
    return 1
  end
  sorted_a = a.sort
  a_length = a.length
  i = 0
  while i<=a_length do 
    current = sorted_a[i]
    if (i+1) > a_length
      return  current +1
    end
    next_val = sorted_a[i+1]
    
    if (current + 1) != next_val
      return current+1
    end
    i +=1
  end
  return 1
end

puts solution([5])
