# Funding Circle Coding Challenge

<<-OBJECTIVE
Write a program that prints out a multiplication table of the first 10 prime numbers.
- The program must run from the command line and print one table to STDOUT.
- The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column. 
OBJECTIVE

# Object Oriented Programming - sending a message to methods
# 1.is_prime? == nil

class Fixnum
  def is_prime?
    x = self - 1
    while x > 1
      return false if (self % x).zero?
      x -=1
    end
    true unless self == 1
  end
end

class TableOfPrimes
  attr_reader :primes
  def initialize
    @primes = []
  end

  def prime_numbers n
    count = 1
    while primes.size != n
      @primes << count if count.is_prime?
      count += 1
    end
  end

  def create_table
    table = []
    nums = prime_numbers 10
    nums.each do |x|
      table << [x]
    end
    table
  end
  
end



def populate
  arr = [nil, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  ar2 = [2, 4, 6, 10, 14, 22, 26, 34, 38, 46, 58]
  # Array.new(10){Array.new(1){["x","o"].sample}}
end

p populate


pr = TableOfPrimes.new
pr.prime_numbers 10
pr.primes
