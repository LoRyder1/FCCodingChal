Feature: To calculate prime numbers
In order to make a multiplication table
I want to see whether a Fixnum is prime
  
  Scenario: Is composite number prime?
  Given Fixnum is 4
  Then the number is false

  Scenario: Is prime number prime?
  Given Fixnum is 5
  Then the number is true