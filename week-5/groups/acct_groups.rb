# input = string of names
# output = a list of groups

# turn string into a list of array
# decide how many groups are needed
# split array of everyone into smaller arrays of 3, 4 or 5
# reorgranize groups if there is a group with less than 3 members
# return arrays

def acct_groups(*names)

 big_list = names.each {|x| x.split(',') }
 groups = []
 remainder = []

  big_list.shuffle.each_slice(5) {|slice|
    if slice.length >= 3
      groups << slice
    else
      remainder << slice
      if remainder.length == 1
        remainder.push(groups[0][0]).push(groups[0][1])
        groups[0].shift(2)
        groups << remainder.flatten
      else
        remainder.push(groups[0][0])
        groups[0].shift(1)
        groups << remainder.flatten
      end
    end}

  i = 1
  while i <= groups.length
    puts "Group #{i}: #{groups[i-1]}"
    i+=1
  end
end


acct_groups('don', 'gary', 'kaleb', 'victor', 'howard', 'joel', 'danny', 'david', 'mike', 'chris', 'carter', 'sammy', 'becca', 'rachel', 'sunny', 'marie', 'jodi', 'morgan', 'amanda', 'bobby', 'buck', 'reggie', 'carl')


# REFLECTION

# What was the most interesting and most difficult part of this challenge?

  # The most difficult problem for me was to make sure that there was minimum of three students in each group and moving students from another group to the other.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

  # I do think I am doing a better job at being able to break down the problem.  Although I believe I could use some work with the language of how I write it.

# Was your approach for automating this task a good solution? What could have made it even better?

  # I believe I had a solid solution for this task, but it could be a lot better.  For instance, if there were eight people to be split up into a group, it would be split up with five people in one group and three in the other group.  Ideally, would like to have each group with four people instead.

# What data structure did you decide to store the accountability groups in and why?

  # I used arrays with sub-arrays to store the information mainly because I’m more familiar with them.  I didn’t think it would be too hard to access the information, because each group was just an element.  If I wanted to find which group a particular person was in then a hash probably would have been the way to go.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  # A new method that I applied for the first time was .each_slice.  This allows a user to slice up an array, by a number of elements.  So if I did .each_slice(4) on an array of 10 elements, it would make two smaller arrays (slices) of four elements and one array (slice) of the remaining two elements.  Another one I used was .shuffle on an array which randomized the elements in the array.

