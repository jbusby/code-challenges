def solution(a)
  peaks = 0
  a_length = a.length
  i = 1
  current_gap = 1
  hash = {}
  prev_peak_index = 0
  while i<a_length do
    if (i + 1) > a_length
      break
    end

    current = a[i]
    prev = a[i-1]
    nex = a[i+1]

    if (prev < current) and (current > nex)
      peaks +=1
      hash[peaks] = current_gap

      prev_peak_index = i
      current_gap = 0
    else
      current_gap += 1
    end
    i +=1
  end
  puts "gap hash is #{hash}"
  puts "length is #{a_length}"
  return peaks
end
