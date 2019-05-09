#re-routes user when input for pet update name is invalid
def reroute_update
  answer = gets.chomp
if answer == "1"
  update_name

elsif answer == "2"
homepage

else
  puts "Oops! Your input was invalid. Please try again."
  reroute_update
end
end

#
def reroute_delete
  answer = gets.chomp
if answer == "1"
  delete_pet

elsif answer == "2"
homepage

else
  puts "Oops! Your input was invalid. Please try again."
  reroute_update
end
end

def current_pet_name_array
  adoption_array = CLI.current_user.adoptions
  count = CLI.current_user.adoptions.count
  while count > 0 
  Character.find_by(id: adoption_array[count].character_id)
  count ++1
end
end
