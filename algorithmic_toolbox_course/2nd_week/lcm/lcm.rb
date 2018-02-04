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
  return a if b == 0

  remiander = a % b
  return gcd(b, remiander)
end

puts n[0] * n[1] / gcd(n[0], n[1])
