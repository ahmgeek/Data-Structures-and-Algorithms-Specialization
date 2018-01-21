#!/usr/bin/env ruby

# Read from STDIN
#
# size = gets.to_i
# n = gets.split(" ").map(&:to_i)
#
# if n.size != size
#   puts "wrong input"
#   exit
# end

def max_pair_fast(size, n)
  max_1 = -max_2 = -1

  for i in (0..size-1)
    max_1 = i if n[i] > n[max_1] || max_1 == -1
  end

  for i in (0..size-1)
    max_2 = i if i != max_1 && ((max_2 == -1) || (n[i] > n[max_2] ))
  end

  n[max_1] * n[max_2]
end

def max_pairwise_product(a)
  result = 0
  n = a.size
  (0..n-1).each do |i|
    (i+1..n-1).each do |j|
      if a[i]*a[j] > result
        result = a[i]*a[j]
      end
    end
  end
  result
end

# Stress test
while true do
  # Stablize the generator for debugging
  srand = 1000

  size = rand(2..1000)
  puts size

  n = []

  (0..size-1).each do |i|
    # Let rand generate big giants shit.
    n << (rand * 13243240).to_i
  end

  (0..size-1).each do |i|
    print n[i].to_s + " "
  end

  res1 = max_pair_fast(size, n)
  res2 = max_pairwise_product(n)

  if res1 != res2
    puts "Wrong answer #{res1}  !=  #{res2}"
    break
  else
    puts "OK"
  end
end
