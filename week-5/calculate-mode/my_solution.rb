# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Chris Shahin ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  # Array of numbers and/or strings
# What is the output? (i.e. What should the code return?)
  # Array of the most frequent elements
# What are the steps needed to solve the problem?
# Convert array to a hash whose elements are the keys
# The value += each time a key is hit
# Return the key(s) with the highest value


# 1. Initial Solution

# def mode (array)
#   frequencies = {}
#   frequencies.default = 0

#   array.each do |x|
#     frequencies[x] += 1
#   end

#   new_array = []
#   frequencies.each { |k,v| new_array.push(k) if v == frequencies.values.max}
#   new_array
# end



# 3. Refactored Solution

def mode (array)
  frequencies = {}
  frequencies.default = 0

  array.each {|x|frequencies[x] +=1}

  new_array = []
  frequencies.each { |k, v| new_array.push(k) if v == frequencies.values.max }
  new_array
end

print mode([1,1,1,1,2,3,4, 'Bob','Bob','Bob'])
print mode([1,2,3,4])
print mode([1,1,2,3,4,4,4,4,4,4,4])

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

  #We decided to implement both arrays and hashes.  We used a hash to contain the elements passed through as keys and the frequencies as the values.  We did this because we thought it would be easier to access and sort the frequencies.  Then we had to push the highest frenquency keys to an array since that what was in the instructions.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# I'd say we were just as succesful.  We found both of these problems to be fairly simple and straightforward.


# What issues/successes did you run into when translating your pseudocode to code?

  # We had a little issue iterating through the hash.  We each just didn't have as much experience working with hashes and weren't as familiar with hash methods.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  # We used the .each to iterate through the keys and values of our hash.  Then we used .values.max on the hash which was able for us to find the keys with the highest values.