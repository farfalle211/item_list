# def testing(target, method)
#   (0..100).each do |x|
#     (0..100).each do |y|
#      puts x*y
#      if x*y == target
#        break if method == "break"
#        return if method == "return"
#      end
#     end 
#   end
# end

# testing(50, "break")

# i = 1
# p ('A'..'Z').each {|letter| [letter, ""] }

# #=> {"A"=>"", "B"=>"", "C"=>"", "D"=>"", "E"=>"", "F"=>"", "G"=>"", "H"=>"", "I"=>"", "J"=>"", "K"=>"", "L"=>"", "M"=>"", "N"=>"", "O"=>"", "P"=>"", "Q"=>"", "R"=>"", "S"=>"", "T"=>"", "U"=>"", "V"=>"", "W"=>"", "X"=>"", "Y"=>"", "Z"=>""}

# characters_list = ("A".."Z").to_a

# # p characters_list

# number_value = 1
# alphabet_array = []

# ('A'..'Z').to_a.each do |letter|
# alphabet_array << [letter, number_value]
# number_value += 1
# end

# alphabet = alphabet_array.to_h
# reversed_alphabet = alphabet_array.reverse.to_h
                           




# p (1..26).to_a




# h = { "a" => 100, "b" => 200 }
# h.each {|key, value| puts "#{key} is #{value}" }


# [1, 2, 3].map { |n| puts n * n }

# [1, 2, 3].each { |element| puts element * element}
word_array = []

          

            line = " " * (3 * 2 - 1) 
            middle = line.length / 2 
            placement_1 = middle - (1 - 1) 
            placement_2 = middle + (1 - 1) 
            line[placement_1] = "A"
            line[placement_2] = "A"
            word_array << line

            line = " " * (3 * 2 - 1) 
            middle = line.length / 2 
            placement_1 = middle - (2 - 1) 
            placement_2 = middle + (2 - 1) 
            line[placement_1] = "B"
            line[placement_2] = "B"
            word_array << line

            p word_array


            
          
            p word_array.flatten.join
           

