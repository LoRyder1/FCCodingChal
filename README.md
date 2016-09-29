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
  bundle exec ruby lib/runner.rb
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
  These are acceptance tests written in BDD style. The purpose of this test is to evaluate teh system's compliance with business requirements and assess whether it is acceptable for delivery.

## Complexity

  Big-O notation - express the runtime in terms of *how quickly it grows relative to the input, as the input gets arbitrarily large.*

  The runtime grows "on the order of the square of the size of the input" (O(n^2)). Nesting two loops -> outer loops runs n times and our inner loop runs n times for each iteration of the outer loop, giving us n^2 total prints. **This program runs in O(n^2) time (or "quadratic time").** 

  Less significant terms quickly become less signficant as n gets big.

  We are talking about the "worst case" scenario.
## Built with

* Ruby - is a dynamic, reflective, object-oriented, general-purpose programming language.
* RSpec - is a behavior-driven development (BDD) framework for the Ruby programming language.
* Cucumber - is a software tool used to run accepatance testing for software

## Authors

* **Lovinder Pnag** - *Initial work* - [LoRyder1](https://github.com/LoRyder1)
