# Funding Circle Coding Challenge
require 'pp'
require 'benchmark'

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
    # 1 is not a prime number
    true unless self == 1
  end
end

class TableOfPrimes
  attr_reader :primes
  def initialize
    @primes = []
    @matrix = []
  end

  def prime_numbers n
    @primes, @matrix = [], [] 
    count = 1
    while primes.size != n
      @primes << count if count.is_prime?
      count += 1
    end
    @matrix << primes
  end

  def create_table
    print '     '
    @primes.each{|i| print "%-3d  " % i}
    print "\n     "
    @primes.each{|i| print '---- '}
    print "\n"

    @primes.each do |j|
      print "%-3d| " % j
      @primes.each{|i| print "%-3d  " % (i*j)}
      print "\n"
    end
  end

  def create_matrix
    @primes.each do |j|
      arr = [j]
      @primes.each{|i| arr << (i*j)}
      @matrix << arr
    end
    @matrix[0].unshift('')
    @matrix
  end

  def functional_programming
    count = 0
    @primes.product(@primes).map{|x,y| x*y}.each_slice(10) do |x|
      @matrix << x.to_a.unshift(@primes[count])
      count+=1
    end
    @matrix[0].unshift('')
    @matrix
  end

end

# ======= CONTROLLER =========

  print "\e[2J"
  
puts 'Welcome to Prime Number Multiplication Tables'
  print "====================================================\n"
  pr = TableOfPrimes.new
  pr.prime_numbers 10
  puts "Table with the first 10 prime numbers:"
  pr.create_table
  print "====================================================\n\n"
  
puts "What N size prime number multiplication would you like?\n"
  n = gets.chomp
  print "\n"

puts 'Table with the first ' + n + ' prime numbers:'
  print "====================================================\n"

  pr.prime_numbers(n.to_i)
  pr.create_table

  print "\n"






