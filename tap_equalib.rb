def solution(a)
  first_part = [a[0]]
  second_part = second_part(first_part, a)
  lowest = (sum_of(first_part) - sum_of(second_part)).abs
  i = 1
  while i<(a.length-1) do
    first_part = first_part + [a[i]]
    second_part = second_part(first_part, a)
    lowest = lowest_diff(
      lowest,
      sum_of(first_part),
      sum_of(second_part)
    )
    i +=1
  end
  return lowest
end

def lowest_diff(current, first, second)
  return [(first - second).abs, current].min
end

def second_part(first_part, second_part)
  start_index = (first_part.length)
  end_index = second_part.length
  return second_part[start_index, end_index]
end

def sum_of(a)
  return a.inject(0) {| sum, i |  sum + i }
end

puts solution([3,1,2,4,3])
