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


acct_groups('don', 'gary', 'kaleb', 'victor', 'howard', 'joel', 'danny', 'david', 'mike', 'chris', 'carter', 'sammy', 'becca', 'rachel', 'sunny', 'marie', 'jodi', 'morgan', 'amanda')




