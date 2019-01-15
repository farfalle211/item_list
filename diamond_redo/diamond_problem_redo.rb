# Diamond Refactoring

# Initial Solution

# def diamond_printer(word)
#   message = word.split("") #message variable is now a new array with "word" now divides into individual characters.
#   array = [] #defines the array variable into an empty array

#   characters_list = {          # Is there a cleaner way of producing this list? #create a charater list that is a hash of the alphabet assigning integer values, in ascending order.
#                      "A" => 1, 
#                      "B" => 2, 
#                      "C" => 3, 
#                      "D" => 4, 
#                      "E" => 5, 
#                      "F" => 6, 
#                      "G" => 7, 
#                      "H" => 8, 
#                      "I" => 9, 
#                      "J" => 10, 
#                      "K" => 11, 
#                      "L" => 12, 
#                      "M" => 13, 
#                      "N" => 14, 
#                      "O" => 15, 
#                      "P" => 16, 
#                      "Q" => 17, 
#                      "R" => 18, 
#                      "S" => 19, 
#                      "T" => 20, 
#                      "U" => 21, 
#                      "V" => 22, 
#                      "W" => 23, 
#                      "X" => 24, 
#                      "Y" => 25, 
#                      "Z" => 26
#                      }

#   characters_list_reversed = { #create a charater list that is a hash of the alphabet assigning integer value, in decsending order.
#                                "Z" => 26,
#                                "Y" => 25, 
#                                "X" => 24, 
#                                "W" => 23, 
#                                "V" => 22, 
#                                "U" => 21, 
#                                "T" => 20, 
#                                "S" => 19, 
#                                "R" => 18, 
#                                "Q" => 17, 
#                                "P" => 16, 
#                                "O" => 15, 
#                                "N" => 14, 
#                                "M" => 13, 
#                                "L" => 12, 
#                                "K" => 11, 
#                                "J" => 10, 
#                                "I" => 9, 
#                                "H" => 8, 
#                                "G" => 7, 
#                                "F" => 6, 
#                                "E" => 5, 
#                                "D" => 4, 
#                                "C" => 3, 
#                                "B" => 2, 
#                                "A" => 1
#                                }

#   message.each do |l| #creating an each loop on message array at block_variable "l"
#     upcased_l = l.upcase # Why is it important to run #upcase? #strings are defined specifically as uppercased. Must be an exact match.
#     if upcased_l == " " || upcased_l == "?" || upcased_l == "." || upcased_l == "!" || upcased_l == "-" # When will this prove true? What happens if it proves true? #when variable upcased_l is " ", ?, ., !, or a -.
#       array << [upcased_l] # if it proves true, upcased_l will shoveled into the empty array.
#     else
#       word_array = [] # What does this represent in the code? Is this a good name for the variable? #this is a new blank array. It is a container for any character that is not: " ", ?, ., !, or a -. NO.
#       characters_list.each_key do |c| # What is c representing? #a key value pair in character_list hash (letters A-Z and numbers 1-26)
#         upcased_c = c.upcase #making these uppercased.

#         if characters_list[upcased_c] == 1 #if character_list is "A"
#           if characters_list[upcased_l].even? # What is the thing being checked as being even? And what is the effect of checking this thing? #if the value of the letter key is even. This code will progress.
#             line = " " * (characters_list[upcased_l] * 2 - 1) #an odd number of spaces is now "line"
#             middle = line.length / 2 #middle is the halfway point of the spaces
#             line[middle] = "A" # the index "middle" of "line" is now "A".
#             word_array << line #line will dump into the word_array
#           end

#           if characters_list[upcased_l].odd? #if the value of the letter key is odd.
#             line = " " * (characters_list[upcased_l] * 2 - 1) #an odd number of spaces is now "line"
#             middle = line.length / 2 #middle is the halfway point of the spaces            
#             line[middle] = "A" #the index "middle" of "line" is now "A".
#             word_array << line #line will dump into the word_array
#           end

#           if characters_list[upcased_l] == 1 #if any of these characters is "A"
#             break # Is this necessary? #no
#           end
#         elsif characters_list[upcased_c] == characters_list[upcased_l] # If a letter in message_array matches any keys in character_list
#           if characters_list[upcased_l].even? #if the value of the letter is even
#             word_array << upcased_c + " " * (characters_list[upcased_c] * 2 - 3) + upcased_c #puts upcased_c key + concatenated spaces + upcased_c
#           end

#           if characters_list[upcased_l].odd? #if the value of the letter is odd
#             word_array << upcased_c + " " * (characters_list[upcased_c] * 2 - 3) + upcased_c #puts upcased_c key + concatenated spaces + upcased_c
#           end 

#           break # Is this break necessary? Is it different from the other break? #no. it doesn't meet any requirements to break out of
#         else
#           if characters_list[upcased_l].even? #if the value of key in character_letter is even
#             line = " " * (characters_list[upcased_l] * 2 - 1) # What is created in this line variable? #a bunch of spaces
#             middle = line.length / 2 #middle is the halfway point of the spaces
#             placement_1 = middle - (characters_list[upcased_c] - 1) # What do the placements represent? #beginning of line variable
#             placement_2 = middle + (characters_list[upcased_c] - 1) #end of line variable
#             line[placement_1] = upcased_c #assigns the begining of the line as upcased_c
#             line[placement_2] = upcased_c #assigns the end of the line as upcased_c
#             word_array << line #dumps the spaces into word_array
#           end

#           if characters_list[upcased_l].odd? # if the value of key in character_letter is odd
#             line = " " * (characters_list[upcased_l] * 2 - 1) #line is a bunch of spaces
#             middle = line.length / 2 #middle is the halfway point of the spaces
#             placement_1 = middle - (characters_list[upcased_c] - 1) #begining of line variable
#             placement_2 = middle + (characters_list[upcased_c] - 1) #end of line variable
#             line[placement_1] = upcased_c #assigns the begining of the line as upcased_c
#             line[placement_2] = upcased_c #assigns the end of the line as upcased_c
#             word_array << line #dumps the spaces into word_array
#           end
#         end
#       end       #end of the each loop

#       if upcased_l != "A" # Is this if statement necessary? #NO
#         characters_list_reversed.each_key do |c| #going into the reverse key list
#           upcased_c = c.upcase #makes it uppercased

#           if characters_list[upcased_c] == 1 #if this is "A"
#             if characters_list[upcased_l].even? #if "A" is even -- which it is not
#               line = " " * (characters_list[upcased_l] * 2 - 1) #creating a bunch of spaces
#               middle = line.length / 2 #middle is the halfway point of the spaces
#               line[middle] = "A" #the index "middle" of "line" is now "A".
#               word_array << line #line will dump into the word_array
#             end

#             if characters_list[upcased_l].odd? #if the value of the letter key is odd.
#               line = " " * (characters_list[upcased_l] * 2 - 1) #an odd number of spaces is now "line"
#               middle = line.length / 2 #middle is the halfway point of the spaces 
#               line[middle] = "A" #the index "middle" of "line" is now "A".
#               word_array << line #line will dump into the word_array
#             end     
#           elsif characters_list[upcased_c] < characters_list[upcased_l] #if one of the key values is less than the key value in message
#             if characters_list[upcased_l].even? #if the value of key in character_letter is even
#               line = " " * (characters_list[upcased_l] * 2 - 1) #creating a bunch of spaces
#               middle = line.length / 2 #middle is the halfway point of the spaces
#               placement_1 = middle - (characters_list[upcased_c] - 1) #begining of line variable
#               placement_2 = middle + (characters_list[upcased_c] - 1) #end of line variable
#               line[placement_1] = upcased_c #assigns the begining of the line as upcased_c
#               line[placement_2] = upcased_c #assigns the end of the line as upcased_c
#               word_array << line #dumps the spaces into word_array
#             end

#             if characters_list[upcased_l].odd? #if the value of key in character_letter is odd
#               line = " " * (characters_list[upcased_l] * 2 - 1) #creating a bunch of spaces
#               middle = line.length / 2 #middle is the halfway point of the spaces
#               placement_1 = middle - (characters_list[upcased_c] - 1) #begining of line variable
#               placement_2 = middle + (characters_list[upcased_c] - 1) #end of line variable
#               line[placement_1] = upcased_c #assigns the begining of the line as upcased_c
#               line[placement_2] = upcased_c #assigns the end of the line as upcased_c
#               word_array << line #dumps the spaces into word_array
#             end
#           end
#         end
#       end
#       array << word_array #dumps word_array into array
#     end
#   end
#   array.flatten!.join("\n") + "\n" # take the array and combines into one solid array, with no spaces, joined at a new line, with an added line.
# end

#Commit 3 - Refactor Solution

  def diamond_printer(word)
  message = word.upcase.split("") 
  array = [] 


number_value = 1
alphabet_array = []

('A'..'Z').to_a.each do |letter|
alphabet_array << [letter, number_value]
number_value += 1
end

alphabet = alphabet_array.to_h
reversed_alphabet = alphabet_array.reverse.to_h
                           

  message.each do |input_letter| 

    if input_letter == " " || input_letter == "?" || input_letter == "." || input_letter == "!" || input_letter == "-" 
      array << [input_letter] 
    else
      word_array = [] 
      alphabet.each_key do |hash_key| 
          
          if alphabet[input_letter] == 1
            word_array << "A"
            break
        

        elsif alphabet[hash_key] == alphabet[input_letter] 
            word_array << hash_key + " " * (alphabet[hash_key] * 2 - 3) + hash_key 

          break 
        else
            line = " " * (alphabet[input_letter] * 2 - 1) 
            middle = line.length / 2 
            placement_1 = middle - (alphabet[hash_key] - 1) 
            placement_2 = middle + (alphabet[hash_key] - 1) 
            line[placement_1] = hash_key 
            line[placement_2] = hash_key 
            word_array << line 
        
        end
      end       

      if input_letter != "A" 
        reversed_alphabet.each_key do |hash_key| 

          if alphabet[hash_key] < alphabet[input_letter] 

              line = " " * (alphabet[input_letter] * 2 - 1) 
              middle = line.length / 2 
              placement_1 = middle - (alphabet[hash_key] - 1) 
              placement_2 = middle + (alphabet[hash_key] - 1) 
              line[placement_1] = hash_key 
              line[placement_2] = hash_key 
              word_array << line 
            
          end
        end
      end
      array << word_array 
    end
  end
  array.flatten!.join("\n")
end

#Commit 2 - Write Runner Code / Tests

puts diamond_printer("ace")
puts "========================="
puts diamond_printer("ghost")
puts "========================="
puts diamond_printer("De Beers")
puts "========================="