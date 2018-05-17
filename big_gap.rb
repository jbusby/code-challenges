def solution(n)
  bin_str = n.to_s(2)

  bin_arr = bin_str.split("")
  i = 0
  longest_gap = 0
  current_gap = 0
  while i < bin_arr.length do
    if bin_arr[i] == "1" 
      longest_gap = [
        current_gap,
        longest_gap
      ].max
      current_gap = 0
    else
      current_gap+=1
    end
    puts "longest is "
    puts longest_gap
    i+=1
  end
  return longest_gap
end


puts solution(1041)
