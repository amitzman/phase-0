# Calculate a Grade

# I worked on this challenge [by myself and with:Albert Hahn ].


# Your Solution Below

def get_grade(avg)
  if avg >= 90
    return "A"
  elsif avg >= 80
    return "B"
  elsif avg >= 70
    return "C"
  elsif avg >= 60
    return "D"
  else
    return "F"
  end
end

p get_grade(75)