# Implement your procedural solution here!
def even_fibonacci_sum(number)
  collect_even(number).reduce(:+) 
end

def collect_even(number)
  fib = [1,2]
  while fib[fib.length - 2] + fib[fib.length - 1] < number
    fib << fib[fib.length - 2] + fib[fib.length - 1]
  end
  fib.select {|figure| figure % 2 == 0}
end

print "#{even_fibonacci_sum(4000000)}"