

class Fixnum
  def is_prime?
    return false if self <= 1
    Math.sqrt(self).to_i.downto(2).each {|i| return false if self % i == 0}
    true
  end
end

class TableOfPrimes
  attr_reader :primes, :matrix, :length
  def initialize length
    @primes, @matrix, @length = [], [], length
    prime_numbers
  end

  def prime_numbers
    count = 1
    while primes.size != length
      primes << count if count.is_prime?
      count += 1
    end
    matrix << primes
  end

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

  def create_matrix
    primes.each do |j|
      arr = [j]
      primes.each{|i| arr << (i*j)}
      matrix << arr
    end
    matrix[0].unshift('')
  end

  def functional_programming
    count = 0
    primes.product(primes).map{|x,y| x*y}.each_slice(length) do |x|
      matrix << x.to_a.unshift(primes[count])
      count+=1
    end
    matrix[0].unshift('')
  end

end

# ======= CONTROLLER/VIEW =========

puts <<-WELCOME
\e[2J
Welcome to Prime Number Multiplication Tables
====================================================

WELCOME
 
  pr = TableOfPrimes.new(10)

puts <<-TABLE1
Table with the first 10 prime numbers:
TABLE1

  pr.create_table

puts <<-QUESTION

====================================================

What N size prime number multiplication would you like?
QUESTION

  n = gets.chomp

puts <<-TABLE2

====================================================

Table with the first #{n} prime numbers:
TABLE2

  pr2 = TableOfPrimes.new(n.to_i) 
  pr2.create_table
