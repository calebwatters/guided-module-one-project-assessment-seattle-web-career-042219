# #re-routes user when input for pet update name is invalid
# def reroute_update
#   answer = gets.chomp
# if answer == "1"
#   update_name

# elsif answer == "2"
# homepage

# else
#   puts "Oops! Your input was invalid. Please try again."
#   reroute_update
# end
# end

# #
# def reroute_delete
#   answer = gets.chomp
# if answer == "1"
#   delete_pet

# elsif answer == "2"
# homepage

# else
#   puts "Oops! Your input was invalid. Please try again."
#   reroute_update
# end
# end

# def current_pet_name_array
#   char_id_array = CLI.current_user.adoptions.map{|adoption|adoption.character_id}
#   pets = char_id_array.map{|char_id| Character.find_by id: char_id}.compact
#   names = pets.map{|pet| pet.name}
#   formatted_names = names.each{|name|
#     name.to_s
#   }
#   formatted_names

# end
