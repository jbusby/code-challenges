
def product(arr)
  raise ArgumentError, "less than 3 ints" if arr.length < 3

  highest_prod_of_3 = arr[0] * arr[1] * arr[2]
  highest_prod_of_2 = arr[0] * arr[1]
  lowest_prod_of_2 = arr[0] * arr[1]
  highest = arr.first(2).max
  lowest = arr.first(2).min

  i = 2

  while i<arr.length do 
    current = arr[i]
    highest_prod_of_3 = [
      current * highest_prod_of_2,
      current * lowest_prod_of_2,
      highest_prod_of_3
    ].max

    highest_prod_of_2 = [
      current * highest,
      current * lowest,
      highest_prod_of_2
    ].max

    lowest_prod_of_2 = [
      current * highest,
      current * lowest,
      lowest_prod_of_2
    ].min

    highest = [current, highest].max
    lowest = [current, lowest].min

    i +=1
  end

  return highest_prod_of_3
end


puts product [-10, -10, 1, 3, 2]
