def get_hash()
 return {
  'A' => 14,
  'K'=> 13,
  'Q'=> 12

 }
end

 # 'J' => 11,
 # 'T' => 10,
 # '9' => 9,
 # '8' => 8,
 #3 '7' => 7,
 # '6' => 6,
 # '5' => 5,
 # '4' => 4,
 # '3' => 3,
 # '2' => 2
#}

def solution(a, b)
  the_hash = get_hash()
  a_deck = a.split("")
  b_deck = b.split("")
  deck_size = a_deck.length
  a_win_count = 0
  i=0

  while i<deck_size do
    puts the_hash
    i +=1
    next
    if hash.a_deck[i] ==  hash[b_deck[i]]
      i +=1
      next
    elsif hash[a_deck[i]] > hash[b_deck[i]]
      a_win_count +=1
    end
    i +=1
  end
  a_win_count
end


puts solution('A586QK', 'JJ653K')
