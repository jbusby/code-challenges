def product_of_3(arr)

  raise ArgumentError, "Less than 3 ints" if arr.length < 3

  highest_product_of_3 = arr[0] * arr[1] * arr[2]
  highest_product_of_2 = arr[0] * arr[1]
  lowest_product_of_2 = arr[0] * arr[1]
  highest_number = [arr[0], arr[1]].max
  lowest_number = [arr[0], arr[1]].min

  i = 2
  arr_length = arr.length
  while i < arr_length do
    current_number = arr[i]
    highest_product_of_3 = [
      highest_product_of_2 * current_number,
      lowest_product_of_2 * current_number,
      highest_product_of_3
    ].max

    highest_product_of_2 = [
      highest_number * current_number,
      lowest_number * current_number,
      highest_product_of_2
    ].max

    lowest_product_of_2 = [
      highest_number * current_number,
      lowest_number * current_number,
      lowest_product_of_2
    ].min

    highest_number = [
      highest_number,
      current_number
    ].max

    lowest_number = [
      lowest_number,
      current_number
    ].min

    i+=1
  end

  return highest_product_of_3
end

puts product_of_3  [-10, -10, 1, 3, 2]
