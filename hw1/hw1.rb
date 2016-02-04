# takes two integers, a and b, and calculates the sum of a and b, 
# hen returns the square of the sum.
def squared_sum(a, b)
  # Q1 CODE HERE
  return (a + b) ** 2
end

# takes in an array of integers, sorts it, then increments every 
# element by 1, and returns it
def sort_array_plus_one(a)
  # Q2 CODE HERE
  return a.each_index { |i| a[i] += 1}.sort
end

# takes in two strings, a first_name and last_name. It will return 
# the first_name concatenated with the last_name, along with a space in between.
def combine_name(first_name, last_name)
  # Q3 CODE HERE
  return "#{first_name} #{last_name}"
end

def blockin_time(a)
  # DO NOT EDIT THIS CODE BELOW
  require './foobar'
  Foobar.baz a
end
