# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(number)
    @number = number
  end

  def sum
    collect_even.reduce(:+) 
  end

  def collect_even
    fib = [1,2]
    while fib[fib.length - 2] + fib[fib.length - 1] < @number
      fib << fib[fib.length - 2] + fib[fib.length - 1]
    end
    fib.select {|figure| figure % 2 == 0}
  end

end