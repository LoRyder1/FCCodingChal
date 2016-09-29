Given(/^Fixnum is (\d+)$/) do |num|
  @num = num
end

Then(/^the number is (.+)$/) do |boolean|
  expect(@num.is_prime?).to eq boolean
end

# ========================================

def matrix4
  [["", 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]] 
end

def print_output4
  "     2    3    5    7    \n     ---- ---- ---- ---- \n2  | 4    6    10   14   \n3  | 6    9    15   21   \n5  | 10   15   25   35   \n7  | 14   21   35   49   \n"
end

Given(/^A table of length (\d+)$/) do |num|
  @pr = TableOfPrimes.new(num)
end

Then(/^A table of that length is created$/) do
  expect{@pr.create_table}.to output(print_output4).to_stdout
end

Then(/^A matrix of that length is created$/) do
  @pr.create_matrix 
  expect(@pr.matrix).to eq(matrix4)
end

Then(/^A matrix of that length is created using functional method$/) do
  @pr.functional_programming
  expect(@pr.matrix).to eq(matrix4)
end

