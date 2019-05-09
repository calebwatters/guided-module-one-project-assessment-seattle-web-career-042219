def homepage
    puts <<-EOF
                                    Current User: #{CLI.current_user.name}


      Press 1. to begin the apotion process
      Press 2. to manage your current pets

    EOF
    answer = gets.chomp

    if answer == "1"
      question

    elsif answer == "2"
    update

    else
      puts "lol try again!!! press 1 or 2"
      homepage
    end

  end

def update
current_pets
puts <<-EOF

Above is a list of your current pets. Choose an ation below.

Press 1. to change the name of one of your pets

Press 2. to put your pet back up for adoption

Press 3. to return to the homepage

EOF

answer = gets.chomp
if answer == "1"
  update_name

elsif answer == "2"
delete_pet

elsif
  answer =='3'
  homepage
else
  puts "Oops! Your input was invalid. Please try again."
  update
end
end


def update_name
  puts "Please enter the name of the pet you'd like to rename"
  answer = gets.chomp

if Character.exists?(:name => answer)

pet = Character.find_by_name(answer)

puts "Great! Now, enter a new name for #{pet.name}"
new_name = gets.chomp
pet.update(name: new_name)
puts "You've got GREAT taste in names!! Check out your renamed pet below."

puts <<-EOF
-----------------------------------------------------
    #{pet.name}
        |\_/|

        (0_0)    ---- I go by #{pet.name.upcase} now :D!
       ==(Y)==
      ----------(u)-
      __|_______|__
-----------------------------------------------------
EOF
else
  puts "You don't have that pet."
  update_name
end
end

def delete_pet
  puts "Please enter the name of the pet you'd like to give up for adoption"
  answer = gets.chomp

if Character.exists?(:name => answer)
pet = Character.find_by_name(answer)

Character.delete(pet.id)
puts "You have the cold cold heart of a Night King."

else
  puts "You don't have that pet."
  delete_pet
end
end

#reformat
  # def search_results(results)
  #   puts "My name is #{results.name}"
  #   puts "I am a #{results.breed} through and through :D!"
  #   puts "I am a #{results.gender}"
  #   puts "Come pick me up from #{results.house}"
  # end
