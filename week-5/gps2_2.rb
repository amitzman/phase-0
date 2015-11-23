# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # creating default hash
  # add strings of items as keys
  # set default quantity(value) = 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash data type output

# Method to add an item to a list
# input: item name and optional quantity
# steps: IF item exists
#        RETURN list
#        ELSE create new key, value to #        the hash based on the         #        arguement of the method.
# output:original list
#        OR updated list

# Method to remove an item from the list
# input: pass through an item in the    goodies list
# steps: delete if item exist delete key
# output: updated hash list

# Method to update the quantity of an item
# input: list (hash), item, quantity
# steps: Change the value(quantity) of the key(item) in the hash
# output: updated list (hash)

# Method to print a list and make it look pretty
# input: list (hash)
# steps: Print out the keys(items) and values (quantity) in nicer way
# output: Final grocery list

def create_a_list(items)
  grocery_hash = Hash.new(0)
  items.split.each{ |goodies| grocery_hash[goodies] += 1}
  final_list(grocery_hash)
end

def new_item(list,item, qty = 1)
  list[item] += qty if !list.has_key?(item)
end

def remove_item(list, item)
  list.delete(item)
end

def update_qty(list, item, qty)
  list[item] = qty if list.has_key?(item)
end

def final_list(list)
  list.each{|k, v| puts "You need #{v} #{k}"}
end

test1 = create_a_list("")
new_item(test1, 'lemonade', 2)
new_item(test1, 'tomatoes', 3)
new_item(test1, 'onions', 1)
new_item(test1, 'ice-cream', 4)
remove_item(test1, 'lemonade')
update_qty(test1, 'ice-cream', 1)
final_list(test1)

# REFLECTION

# What did you learn about pseudocode from working on this challenge?

  # Learned that breaking down the problem will help solving the problem much easier.  It also makes the time spent on writing actual code more efficient.


# What are the tradeoffs of using Arrays and Hashes for this challenge?

  # It was much easier to access the grocery items in a Hash rather than an array.  An array, we would have to access by the index which is just an integer, but keys in the hash can be accessed by the name of the key.

# What does a method return?

  # A method executes a block of code when called and returns the final product of what is executed.

# What kind of things can you pass into methods as arguments?

  # Arguments of a method can be many things.  They can be hashes, arrays, strings, integers or floats.

# How can you pass information between methods?

  # In this challenge we were able to pass information between methods by creating a variable for a grocery list.  Then we were able to pass through the same variable as an argument through each method.


# What concepts were solidified in this challenge, and what concepts are still confusing?

  # Refactoring was helped solidified.  Mainly the whole Don’t Repeat Yourself concept.  We were able to reduce the amount of lines in our code from it.






