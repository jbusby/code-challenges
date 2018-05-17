def solve(a0, a1, a2, b0, b1, b2)
  alice = [a0, a1, a2]
  bob = [b0, b1, b2]
  alice_points = 0
  bob_points = 0
  i = 0
  while i < 3 do
    if alice[i] > bob[i]
      alice_points +=1
    elsif bob[i] > alice[i]
      bob_points +=1
    end
    i +=1
  end

  return "#{alice_points} #{bob_points}"

end

puts solve(5,6,7,3,6,10)
