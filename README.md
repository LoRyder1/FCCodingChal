# Funding Circle Coding Challenge

Write a program that prints out a multiplication table of the first 10 prime numbers.
  - The program must run from the command line and print one table to STDOUT.
  - The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column. 

## Prerequisites

  1. make sure you have **ruby** and **bundler** installed on your local computer. In your terminal type:
  ```
  ruby -v
  bundler -v
  ```
  2. pull down project from github and navigate to project
  ```
  git clone https://github.com/LoRyder1/FCCodingChal
  cd FCCodingChal
  ```
  3. Install any missing gems
  ```
  bundle install
  ```

### Getting Started 

  1. run program: navigate to project directory
  ```
  bundle exec ruby lib/prime_nums.rb
  ```

## Running the tests

  1. run rspec tests
  ```
  bundle exec rspec spec/prime_num_spec.rb
  ```
  These are unit tests to individually and independently test the program parts/units. The purpose is to validate that each unit of the software performs as designed.
  Methods tested: *is_prime?*, *prime_numbers*, *create_table*, *create_matrix*, *functional_programming*
  2. run cucumber tests
  ```
  bundle exec cucumber features/prime_nums.feature
  bundle exec cucumber features/prime_nums_table.feature
  ```
  These are acceptance tests written in BDD style. The purpose of this test is to evaluate teh system's compliance withe business requirements and assess whether it is acceptable for delivery.

## Built with

* Ruby - is a dynamic, reflective, object-oriented, general-purpose programming language.
* rspec - is a behavior-driven development (BDD) framework for the Ruby programming language.
* cucumber - is a software tool used to run accepatance testing for software
