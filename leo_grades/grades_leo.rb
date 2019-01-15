def grades(input_grade)
  if input_grade <= 100 && input_grade > 90
    puts "A"
  elsif input_grade < 90 && input_grade  >= 80
    puts "B"
  elsif input_grade < 80 && input_grade  >= 70
    puts "C"
  elsif input_grade < 70 && input_grade  >= 60
    puts "D"
  else 
    puts "F"
  end
end
def calculate_letter_grade(*args)
 total = 0
  [*args].each { | percent | total += percent }
    
  average = total / [*args].length
  grades(average)
end
# Commit 4 - Write Runner Code / Tests
calculate_letter_grade(88, 55, 33, 66, 40, 68, 99, 98, 85.333333)


def grades(input_grade)
  case average
  when 90..100
    puts "A"
  when 80..90
    puts "B"

  elsif input_grade < 90 && input_grade  >= 80
    puts "B"
  elsif input_grade < 80 && input_grade  >= 70
    puts "C"
  elsif input_grade < 70 && input_grade  >= 60
    puts "D"
  else 
    puts "F"