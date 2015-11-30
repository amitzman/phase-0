# Your Names
# 1)Alex Mitzman
# 2)Joe Plonsker

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, people)
  #change order_quantity to something more intuitive
  #change library name to menu
  #Lines 8-16 determine if item_to_make is on the menu.  Refactor these lines just to print a simple message.  Error counter not neccessary.

  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make)



#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end



  # serving_size = library[item_to_make]
  leftovers = people % menu[item_to_make]
  number_of_items = people/menu[item_to_make]

  case leftovers
  when 0
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}"
  when 6
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients.  Suggested baking items: 1 cake and 1 cookie or 6 cookies"
  when 5
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients.  Suggested baking items: 1 cake or 5 cookies"
  else
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients. Suggested baking items: #{leftovers} cookies."
  end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection

