
def solution(a, k)
  return unless a.kind_of?(Array) and k <= a.length 

  prepend_me = a.last(k)
  prepend_me.each do | value |
    a.slice!(a.index(value))
  end
  final_arr = prepend_me + a

  return final_arr
end
puts solution(NilClass, 1)#[1,2,3,4], 4)
