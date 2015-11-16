# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
#Create answer variable
answer = 1
 if number < 0
  return nil
  elsif number <= 1
  return answer
  else
  for num in (1..number)
  answer *= num
  end
  end

  return answer
end