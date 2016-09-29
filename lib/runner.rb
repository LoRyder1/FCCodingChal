# ==== CONTROLLER/VIEW

require_relative 'model/prime_nums'

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
