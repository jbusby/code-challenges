def solution(a)
  return a unless a.kind_of?(Array)
  hash = {}
  a.each do | value |
    if hash.key? value
      hash[value] +=1
    else
      hash[value] = 1
    end  
  end
  lone_value = hash.key(1) ? hash.key(1) : a
 
  return lone_value
end

puts solution([2,1,2,5,3,1,5,3,77])
