# #!/usr/bin/env ruby

# Read from STDIN
#
n  = gets.to_i

#
# if n.size != size
#   puts "wrong input"
#   exit
# end

def fib(n)
  arr = []
  arr[0] = 0
  arr[1] = 1

  for i in (2..n)
    arr[i] = (arr[i-1] + arr[i-2]) % 10
  end
  arr[n]
end

puts fib(n)
