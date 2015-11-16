# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Saundra Castaneda].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: The sum of the array
# Steps to solve the problem.

#Create a definition of the total method with an arugement
#Create a variable set to zero
#EACH number in the array add to total
#END
#Return variable

# 1. total initial solution
# def total (num_array)
#   answer = 0
#   num_array.each do |num|
#     answer += num
#   end
#   return answer
# end

# puts total ([5, 4, 2])

# 3. total refactored solution
def total (num_array)
  num_array.reduce(:+)
end

puts total ([1,2,3])

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A sentence
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(strings)
  # output variable equal to empty string
  # iterate through strings array
  # if first item, capitalize it
  # otherwise, add it to string
  # return output with period at the end

  return strings.join(' ').capitalize + '.'
end

# 6. sentence_maker refactored solution
