# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  count = []
  if list_of_integers == []
    return 0
  else
  list_of_integers.each do |num|
    count.push(num) if num >= lower_bound && num <= upper_bound
    end
  end
  return count.length
end



p count_between([1,2,3], 0, 10)