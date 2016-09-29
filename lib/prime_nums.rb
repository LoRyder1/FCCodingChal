# ===== MODEL =======

=begin
  the method is_prime? works on any instance of the Fixnum class
  Only have to test whether it is divisble only upto the square root of number.
=end

class Fixnum
  def is_prime?
    return false if self <= 1
    Math.sqrt(self).to_i.downto(2).each {|i| return false if self % i == 0}
    true
  end
end

=begin
  an instance of TableOfPrimes requires an initialization of the length or N first prime numbers
  initialize prime_numbers method to populate variables: primes and matrix 
=end

class TableOfPrimes
  attr_reader :primes, :matrix, :length
  def initialize length
    @primes, @matrix, @length = [], [], length
    prime_numbers
  end

  # build up an array of the first N(length) numbers that are prime and then insert that array into matrix
  def prime_numbers
    count = 1
    while primes.size != length
      primes << count if count.is_prime?
      count += 1
    end
    matrix << primes
  end

  # create a pretty table using string formatting, mutliplication table requires a loop inside of a loop - O(N^2)
  def create_table
    print '     '
    primes.each{|i| print "%-3d  " % i}
    print "\n     "
    primes.each{|i| print '---- '}
    print "\n"

    primes.each do |j|
      print "%-3d| " % j
      primes.each{|i| print "%-3d  " % (i*j)}
      print "\n"
    end
  end

  # loop inside of a loop to populate 2D matrix (an array within an array)
  def create_matrix
    primes.each do |j|
      arr = [j]
      primes.each{|i| arr << (i*j)}
      matrix << arr
    end
    matrix[0].unshift('')
  end

  # using functional programming methods making code cleaner, readable, and making chaining easier
  # the steep cost of object creation in Ruby = negative perfomance. 
  def functional_programming
    count = 0
    primes.product(primes).map{|x,y| x*y}.each_slice(length) do |x|
      matrix << x.to_a.unshift(primes[count])
      count+=1
    end
    matrix[0].unshift('')
  end
end
