# Pad an Array

# I worked on this challenge [by myself, with: Chris Shahin ]

# I spent [45] minutes on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? three parameters,
  #1) the array to use,
  #2) A minimum number of elements the array must contain
  #3) value of the padded elements
# What is the output? (i.e. What should the code return?) return an array
# What are the steps needed to solve the problem?
# take paramter length compared with param 2 value
# if param 1 less than param 2, fire a loop

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  i = min_size - array.length

  i.times {array.push(value)} if array.length < min_size
  array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  i = min_size - array.length

  i.times {new_array.push(value)} if new_array.length < min_size
  new_array
end



# 3. Refactored Solution

# Forgot to save our initial and refactored above.

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

  # Yep, we are able to define an input and output.  Then from there we came up with steps to solve the problem.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  # We were able to successfully translate our psuedocode into code on our first try.  We both understood the control flow, methods, iterators that were needed in order to succesfully code.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  #Our initial solution was succesful.  That is because our code was built for all possible instances that were built in the rsepc file.


# When you refactored, did you find any existing methods in Ruby to clean up your code?

  #There weren't any new methods we used.  But we did refactor by making the if statements all one line.


# How readable is your solution? Did you and your pair choose descriptive variable names?

  # I think our solution is readable.  It's just only a few lines and each line is very clear what is going on.  For the most part I'd say our variable names are descriptive, except for the difference between min_value and the array length.  We just used i, but we probably should have used something more descriptive.

# What is the difference between destructive and non-destructive methods in your own words?

  # Non-destructive methods creates a copy of what is passed through.  So for this challenge, when the array is passed through, a new copy of it will be made and that's where the changes will be done to it on the copy.  So the original array passed through was not changed at all.
  # Destructive methods are methods that will modifiy the original array passed through.
