
require 'pry'
def welcome
  puts <<-'EOF'
  ~

  Welcome to the adoption agency for Game of Thrones Characters!

  ~
                      Please Enter Your Name
  ______________________________________________________________
  EOF
end



 def get_user
      puts "What is your name?"
        new_name = gets.chomp
        new_user = User.find_or_create_by(name: new_name)
        CLI.current_user = new_user
  end

  def who_is_logged_in
    username = CLI.current_user
    puts <<-EOF
    ---------------------------------------------
            Welcome #{username.name}!
    ---------------------------------------------
    EOF
  end

  # 'search_results' takes in the input of a character instance and outputs the attributes associated with it

def search_results(results)
  puts "My name is #{results.name}"
  puts "I am a #{results.breed} through and through :D!"
  puts "I am a #{results.gender}"
  puts "Come pick me up from #{results.house}"
end

# 'find_character_by_name' takes in a user input and queries the database to see if it exists and shovels 
# it into the 'search_results' method if the value is not 'nil'

def find_characters_by_name
  # binding.pry
  puts "Please enter a character name"
  search = gets.chomp.downcase
  name = search.split.each { |name| name.capitalize! }.join(' ')
  CLI.current_result = Character.find_by(name: name)
    if CLI.current_result == nil
      puts "that is not a character's name, please try again"
      find_characters_by_name
    else
  search_results(CLI.current_result)
    end

end

#'search_by_breed' takes the user input gathered through 'get_breed_from_user' method 
#   and queries the database based on the search criteria

def search_by_breed(num)
  if num == "1"
    puts <<-EOF
      --------------------------
           Valar Morgolis!
      --------------------------
      EOF
    breed = 'Braavosi'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  elsif num == "2"
    puts <<-EOF
      --------------------
        Dorn has no king
      --------------------
      EOF
    breed = 'Dornish'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "3"
       puts <<-EOF
      ------------------------
      Yer jalan atthirari anni
      ------------------------
      EOF
    breed = 'Dothraki'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "4"
       puts <<-EOF
      ------------------------------
      These are the free folk indeed
      ------------------------------
      EOF
    breed = 'Free Folk'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "5"
      puts <<-EOF
            くコ:彡
      --------------------------
      What is dead my never die!
      --------------------------
      EOF
    breed = 'Ironborn'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "6"
      puts <<-EOF
             _
            / \      _-'
          _/|  \-''- _ /
     __-' { |          \
         /             \

                "o.  |o }
         |            \ ;
                       ',
            \_         __\

              ''-_    \.//
                / '-____'
               /
             _'
           _-'
      --------------------------
          WINTER IS COMING!
      --------------------------
      EOF
    breed = 'Northmen'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "7"
      puts <<-EOF
                         _.'.__
                      _.'      .
':'.               .''   __ __  .
  '.:._          ./  _ ''     "-'.__
.'''-: """-._    | .                "-"._
 '.     .    "._.'                       "
    '.   "-.___ .        .'          .  :o'.
      |   .----  .      .           .'     (
       '|  ----. '   ,.._                _-'
        .' .---  |.""  .-:;.. _____.----'
        |   .-""""    |      '
      .'  _'         .'    _'
     |_.-'            '-.'
      EOF
    breed = 'Rivermen'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "8"
    breed = 'Valemen'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "9"
    breed = 'Valyrian'
    puts <<-EOF
            /           /
            /' .,,,,  ./
           /';'     ,/
          / /   ,,//,`'`
         ( ,, '_,  ,,,' ``
         |    /@  ,,, ; `
        /    .   ,''/' `,``
       /   .     ./, `,, ` ;
    ,./  .   ,-,',` ,,/'','
   |   /; ./,,'`,,'' |   |
   |     /   ','    /    |
    \___/'   '     |     |
      `,,'  |      /     `\
           /      |        ~\
          '       (
         :
        ; .         --
      :            ;  "

    EOF
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    elsif num == "10"
    breed = 'Westeros'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
    else num == "11"
       puts <<-EOF
      ~-------
      You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!
      ~-------
      EOF
  CLI.current_result = Character.all.sample
  search_results(CLI.current_result)
  end

end

# takes the user input string and passes it as an argumnet for 'search_by_breed'

def get_breed_from_user
  puts "Below you'll find a list of breeds-- please enter the number
  that corresponds to the breed you want your new GoT pet to have:

1 - Braavosi
2 - Dornish
3 - Dothraki
4 - Free Folk
5 - Ironborn
6 - Northmen
7 - Rivermen
8 - Valemen
9 - Valyrian
10 - Westeros
11 - SURPRISE ME!!!"
search_query = gets.chomp
  search_by_breed(search_query)
end



#'question' prompts the user for the means by which they would like to search for a character

def question
  puts <<-EOF
    Press 1. to search by name
    Press 2. to search by breed
    Press 3. to search a random character
  EOF
  answer = gets.chomp

  if answer == "1"
    find_characters_by_name

  elsif answer == "2"
    get_breed_from_user 
  elsif answer == "3"
    search_by_breed("11")
  else
    puts "that is not a valid input yet"
  end

end

#'GoT_logo' is pretty self explanitory

def got_logo
puts <<-'EOF'

      ___               ___  ___   ___
  .'|=|_.'    .'|=|`.   `._|=|   |=|_.'
.'  |___    .'  | |  `.      |   |
|   |`._|=. |   | |   |      |   |
`.  |  __|| `.  | |  .'      `.  |
  `.|=|_.''   `.|=|.'          `.|

      EOF
end

#creates a new instance of adoption if the user has not already adopted the pet
# def adopt?
#   puts <<-EOF
#   -----------------------------------------------------
#   Would you like to adopt this pet? Enter 'yes' or 'no'
#   -----------------------------------------------------
#   EOF

#   answer = gets.chomp.downcase
#   if answer == 'yes'
#     Adoption.find_or_create_by(character_id: CLI.current_result.id, user_id: CLI.current_user.id)
#   else
#     puts "You're a JERK"
    
#   end
# end

def current_pets
  puts <<-EOF
  -----------------------------------------------------
          Here are your current pets
          |\_/|        D\___/\
          
          (0_0)         (0_o)
         ==(Y)==         (V)
        ----------(u)---(u)----oOo--U--oOo---
        __|_______|_______|_______|_______|___
  -----------------------------------------------------
  EOF
pet_array = CLI.current_user.adoptions
pet_array.map {|pet|search_results(pet.character)}
end





# def confirm_user_choice(attribute_pref)
#   response = ['You risky biscuit!!', 'Good choice!!', 'Uh oh.......',
#               "Okay, we've taken your preference into account."]
#   surprise = "You wildling, you!! Livin on the edge huh??
#   What if you get Geoffry?!"
#   if attribute_pref == 11
#     puts surprise
#   else puts response.sample
#        puts 'Press enter for the big reveal.....'
#   end
# end
