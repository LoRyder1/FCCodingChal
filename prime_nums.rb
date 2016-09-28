# Funding Circle Coding Challenge

<<-OBJECTIVE
Write a program that prints out a multiplication table of the first 10 prime numbers.
- The program must run from the command line and print one table to STDOUT.
- The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column. 
OBJECTIVE


class Fixnum
  def is_prime?
    true
  end
end

def prime_numbers
  nums = (1..10).to_a
  primes = []
  nums.each do |x|
    primes << x if x.is_prime?
  end
  primes
end


p prime_numbers