def miniMaxSum(arr)

  i=0
  ar_length = arr.length
  arr_copy = arr.dup
  min_sum = 10 ** 90

  max_sum = 0
  while i<ar_length do
    arr.delete_at(i)
    min_sum = [
      arr.inject(0) { |sum, i| sum + i },
      min_sum 
    ].min
    max_sum = [
      arr.inject(0) {|sum, i| sum + i },
      max_sum
    ].max
    arr = arr_copy.dup
    i+=1
  end
  puts "#{min_sum} #{max_sum}"

end

miniMaxSum([942381765, 627450398, 954173620, 583762094, 236817490])
