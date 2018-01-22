# #!/usr/bin/env ruby

# Read from STDIN
#
n  = gets.to_i
# n = gets.split(" ").map(&:to_i)
#
# if n.size != size
#   puts "wrong input"
#   exit
# end

def fib_slow(n)
  return 0 if n == 0
  return 1 if n == 1
  return fib(n - 1) + fib(n - 2)
end

def fib_fast(n)
  arr = []
  arr[0] = 0
  arr[1] = 1

  for i in (2..n)
    arr[i] = arr[i-1] + arr[i-2]
  end
  arr[n]
end

# puts fib_slow(n)

puts fib_fast(n)
