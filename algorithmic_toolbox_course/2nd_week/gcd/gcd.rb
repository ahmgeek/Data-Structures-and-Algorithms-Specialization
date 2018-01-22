# #!/usr/bin/env ruby

# Read from STDIN
#
n = gets.split(" ").map(&:to_i)
#
# if n.size != size
#   puts "wrong input"
#   exit
# end

def gcd(a, b)
  best = 0

  for i in (1..a+b)
    if a % i == 0 && b % i == 0
      best = i
    end
  end
  best
end

def gcd_fast(a, b)
  return a if b == 0

  remiander = a % b
  return gcd_fast(b, remiander)
end

#puts gcd(n[0], n[1])
puts gcd_fast(n[0], n[1])

# Stress test
# while true do
#   # Stablize the generator for debugging
#   srand = 1000
#
#   size = rand(2..1000)
#   puts size
#
#   n = []
#
#   (0..size-1).each do |i|
#     # Let rand generate big giants shit.
#     n << (rand * 13243240).to_i
#   end
#
#   (0..size-1).each do |i|
#     print n[i].to_s + " "
#   end
#
#   res1 = test_1 # replace with first implm
#   res2 = test_2 # replace with second implm
#
#   if res1 != res2
#     puts "Wrong answer #{res1}  !=  #{res2}"
#     break
#   else
#     puts "OK"
#   end
# end
