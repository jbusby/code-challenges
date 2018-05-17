def product(arr)
  sorted_arr = arr.sort
  puts sorted_arr
  top_3 = sorted_arr[-1] * sorted_arr[-2] * sorted_arr[-3]
  top_1_bottom_2 = sorted_arr[-1] * (sorted_arr[0] * sorted_arr[1])
  puts top_3
  puts top_1_bottom_2

  [top_3, top_1_bottom_2].max
end

puts product [-10, -10, 1, 3, 2]
