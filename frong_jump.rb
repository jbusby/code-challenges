def solution(x, y, d)
  return ((y-x).to_f / d).to_f.ceil
end

puts solution(10, 85, 30)
