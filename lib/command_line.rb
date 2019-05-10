
require 'pry'
def welcome
  welcome =  <<-'EOF'
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  Welcome to the adoption agency for Game of Thrones Characters!

  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                      Please Enter Your Name
  ______________________________________________________________
  EOF

  puts welcome.colorize(:light_yellow)
end



def get_user
        new_name = gets.chomp
        new_user = User.find_or_create_by(name: new_name)
        CLI.current_user = new_user
end


def who_is_logged_in
  username = CLI.current_user
  welcome = <<-EOF



        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

      __    __    ___  _         __   ___   ___ ___    ___
      |  T__T  T  /  _]| T       /  ] /   \ |   T   T  /  _]
      |  |  |  | /  [_ | |      /  / Y     Y| _   _ | /  [_
      |  |  |  |Y    _]| l___  /  /  |  O  ||  \_/  |Y    _]
      l  `  '  !|   [_ |     T/   \_ |     ||   |   ||   [_
        |      / |     T|     |\     |l     !|   |   ||     T
           |_/\_/  l_____jl_____j \____j \___/ l___j___jl_____j

                            #{username.name.upcase}!

        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  EOF
  puts welcome.colorize(:light_cyan)
end

  # 'search_results' takes in the input of a character instance and outputs the attributes associated with it

def search_results(results)
  puts
  puts
  puts "My name is #{results.name}".colorize(:light_cyan)
  puts
  puts "I am a #{results.breed} through and through :D!".colorize(:light_blue)
  puts
  puts "I am a #{results.gender}".colorize(:light_blue)
  puts
  puts "Come pick me up from #{results.house}".colorize(:light_blue)
  puts
  puts
end

# 'find_character_by_name' takes in a user input and queries the database to see if it exists and shovels
# it into the 'search_results' method if the value is not 'nil'

def find_characters_by_name
  # binding.pry
  puts "Please enter a character name".blue
  search = gets.chomp.downcase
  name = search.split.each { |name| name.capitalize! }.join(' ')
  CLI.current_result = Character.find_by(name: name)
    if CLI.current_result == nil
      puts <<-EOF
      That is not a characters name.

      EOF

  reroute_name_search(reroute_name_search_prompt)
    else
  search_results(CLI.current_result)
  adopt?
    end

end

#'search_by_breed' takes the user input gathered through 'get_breed_from_user' method

#   and queries the database based on the search criteria


def search_by_breed(selection)
  if selection != "SUPRISE ME!!!"
    random_art
    CLI.current_result = Character.where(breed: selection).sample
    search_results(CLI.current_result)
    adopt?
  elsif selection == "SUPRISE ME!!!"
    random_art
    CLI.current_result = Character.all.sample
    search_results(CLI.current_result)
    adopt?
  else
    puts "ERROR".colorize(:red)
  end

end


def get_breed_from_user
  prompt = TTY::Prompt.new
  options_array = ['Braavosi',
  'Dornish', 'Dothraki', 'Free Folk', 'Ironborn',
  'Northmen', 'Rivermen', 'Valemen',
  'Valyrian', 'Westeros', 'SUPRISE ME!!!']
  options_list = options_array.each{|breed| breed.to_s}

  search_query = prompt.select("Select a breed", options_list)

  search_by_breed(search_query)
end



#'question' prompts the user for the means by which they would like to search for a character

def adoption_search_prompt
  prompt = TTY::Prompt.new
  options_array = ["Search by name", "Search by breed", "Wildcard"]
  options_list = options_array.each {|string| string.to_s}
  search_query = prompt.select("Select your search method", options_list)
  search_query
end

def route_search(search_query)
  if search_query == "Search by name"
    find_characters_by_name

  elsif
    search_query == "Search by breed"
    get_breed_from_user
  elsif
    search_query== "Wildcard"
    puts <<-EOF
   ---------------------------------------------------------------------
   You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!
   ---------------------------------------------------------------------
   EOF
  CLI.current_result = Character.all.sample
  search_results(CLI.current_result)
  adopt?
  end
end

def question
  route_search(adoption_search_prompt)

end


#'GoT_logo' is pretty self explanitory

def got_logo
  logo = <<-'EOF'
                                 |ZZzzz
                                 |
                                 |
                    |ZZzzz      /^\            |ZZzzz
                    |          |~~~|           |
                    |        |^^^^^^^|        / \
                   /^\       |[]+    |       |~~~|
                |^^^^^^^|    |    +[]|       |   |
                |    +[]|/\/\/\/\^/\/\/\/\/|^^^^^^^|
                |+[]+   |~~~~~~~~~~~~~~~~~~|    +[]|
                |       |  []   /^\   []   |+[]+   |
                |   +[]+|  []  || ||  []   |   +[]+|
                |[]+    |      || ||       |[]+    |
                |_______|------------------|_______|
                                                 __----~~~~~~~~~~~------___
                                   .  .   ~~//====......          __--~ ~~
                   -.            \_|//     |||\\  ~~~~~~::::... /~
                 ___-==_       _-~o~  \/    |||  \\            _/~~-
         __---~~~.==~||\=_    -_--~/_-~|-   |\\   \\        _/~
     _-~~     .=~    |  \\-_    '-~7  /-   /  ||    \      /
   .~       .~       |   \\ -_    /  /-   /   ||      \   /
  /  ____  /         |     \\ ~-_/  /|- _/   .||       \ /
 |~~    ~~|--~~~~--_ \     ~==-/   | \~--===~~        .\
         '         ~-|      /|    |-~\~~       __--~~
                     |-~~-_/ |    |   ~\_   _-~            /\
                          /  \     \__   \/~                \__
                      _--~ _/ | .-~~____--~-/                  ~~==.
                     ((->/~   '.|||' -_|    ~~-/ ,              . _||
                                -_     ~\      ~~---l__i__i__i--~~_/
                                _-~-__   ~)  \--______________--~~
                              //.-~~~-~_--~- |-------~~~~~~~~
                                     //.-~~~--\
                     ___               ___  ___   ___
                 .'|=|_.'    .'|=|`.   `._|=|   |=|_.'
               .'  |___    .'  | |  `.      |   |
               |   |`._|=. |   | |   |      |   |
               `.  |  __|| `.  | |  .'      `.  |
                 `.|=|_.''   `.|=|.'          `.|

                    Made by Caleb & Hanna

                                              Flatiron School ♥

      EOF
      puts logo.colorize(:light_cyan)
end

#creates a new instance of adoption if the user has not already adopted the pet

def adopt?
  route_adoption(adopt_prompt)
end


def adopt_prompt
  prompt = TTY::Prompt.new
  search_query = prompt.select("  Would you like to adopt this pet?", %w(Yes No) )
  search_query
end


def route_adoption(search_query)
  if search_query == "Yes"
    Adoption.find_or_create_by(character_id: CLI.current_result.id, user_id: CLI.current_user.id)
    yay = <<-EOF

      ~~~~~~~~~~~~~~~~~~~~~~~~~~~

      YAY!! YOU ADOPTED ME!!

     ~~~~~~~~~~~~~~~~~~~~~~~~~~~
    EOF
    puts yay.green
    homepage
  elsif search_query== "No"
    not_adopt
  end
end

def not_adopt_prompt
  prompt = TTY::Prompt.new
  search_query = prompt.select(" ", %w(Yes Menu) )
  search_query
end

def not_adopt
   puts <<-EOF
  ------------------------------------------------------------
    Would you like to search for a new pet or go to the menu?
  ------------------------------------------------------------
    EOF
    no_option = not_adopt_prompt
    if no_option == 'Yes'
      whitespace
        question
        adopt?
    elsif no_option == 'Menu'
      whitespace
        homepage
    else
        puts 'That is not a valid input'.red
        not_adopt
    end
end


def current_pets
    pets = <<-EOF
    -----------------------------------------------------
                  __
      (\,--------'()'--o   HERE ARE YOUR PETS
      (_    ___    /~"
        (_)_)  (_)_)
   -----------------------------------------------------
  EOF

    puts pets.yellow
     pet_array = CLI.current_user.characters
     pet_array.each {|pet|search_results(pet)}
end

def current_pet_name_array
  char_id_array = CLI.current_user.adoptions.map{|adoption|adoption.character_id}
  pets = char_id_array.map{|char_id| Character.find_by id: char_id}.compact
  names = pets.map{|pet| pet.name}
  formatted_names = names.each{|name|
    name.to_s
  }
  formatted_names

end

def reroute_name_search_prompt
  prompt = TTY::Prompt.new
  options_array = ['Re-enter Name','Return To Homepage']
  options_list = options_array.each{|select| select.to_s}
  search_query = prompt.select("That is not a characters name.", options_list )
  search_query
end

def reroute_name_search(search_query)
  if search_query == "Re-enter Name"
    find_characters_by_name
  elsif search_query== "Return To Homepage"
    homepage
  end
end


def update_name
    pet_name = get_pet_names

  if Character.exists?(:name => pet_name)

    pet = Character.find_by_name(pet_name)

    puts "Great! Now, enter a new name for #{pet.name}"
    new_name = gets.chomp
    pet.update(name: new_name)
    CLI.current_user.reload
    puts "You've got GREAT taste in names!! Check out your renamed pet below."

     puts <<-EOF
    -----------------------------------------------------
                  __
      (\,--------'()'--o   I GO BY #{pet.name.upcase} NOW!!!!
      (_    ___    /~"
        (_)_)  (_)_)
   -----------------------------------------------------
  EOF
    homepage
  end
end


def delete_pet
  puts "Please enter the name of the pet you'd like to give up for adoption"
  answer = get_pet_names

  if Character.exists?(:name => answer)
    pet = Character.find_by_name(answer)
    pet_name = pet.name

    Adoption.where(character_id: pet.id, user_id: CLI.current_user.id).destroy_all
    delete = <<-EOF

           #{pet_name} has been ABANDONED.


    You have the cold cold heart of a Night King.

    EOF
    puts delete.colorize(:red)
    CLI.current_user.reload
    homepage
  else
    puts "You don't have that pet."
    reroute_delete
  end
end

def get_pet_names

  prompt = TTY::Prompt.new
  pet_choice = prompt.select("Select a pet", current_pet_name_array)
  pet_choice
end

def get_menu_prompt
    prompt = TTY::Prompt.new
    options_array = ['Begin Adoption Process', 'Manage your current pets', 'Logout', 'Quit to desktop']
    options_list = options_array.each {|name| name.to_s}
        selection = prompt.select("What would you like to do?", options_list)

end


def homepage
  whitespace
  t = Time.now
    page = <<-EOF

      _    _
     | |  | |
     | |__| | ___  _ __ ___   ___ _ __   __ _  __ _  ___
     |  __  |/ _  | '_ ` _ | / _   '_ | / _` |/ _` |/ _ \

     | |  | | (_) | | | | | |  __/ |_) | (_| | (_| |  __/
     |_|  |_| ___/|_| |_| |_| ___| .__/ |__,_| __, ||___|
                                 | |           __/ |
                                 |_|          |___/

     #{t.strftime("%I:%M%p") }                            Current User: #{CLI.current_user.name}




    EOF
    puts page.colorize(:light_cyan)
    answer = get_menu_prompt

    if answer == "Begin Adoption Process"
      question

    elsif answer == "Manage your current pets"
      if CLI.current_user.adoptions.count== 0
        puts "you don't have any pets yet!"
        homepage
      else
        update
      end
    elsif answer == 'Logout'
      runner
    elsif answer == 'Quit to desktop'
      exit!
    else
      puts "lol try again!!! press 1 or 2"
      homepage
    end

end

def get_user_input_update
    prompt = TTY::Prompt.new
    options_array = ["Change the name of one of your pets", "Put your pet back up for adoption", "Return to the homepage"]
    options_list = options_array.each{|options| options.to_s}
    user_input = prompt.select("Above is a list of your current pets. Choose an option below.", options_list )

end

def update
  CLI.current_user.reload
    current_pets


    answer = get_user_input_update
    if answer == "Change the name of one of your pets"
        update_name

    elsif answer == "Put your pet back up for adoption"
        delete_pet

    elsif
        answer =='Return to the homepage'
        homepage
    else
        puts "Oops! Your input was invalid. Please try again."
        update
    end
end

def runner
  got_logo
  welcome
  get_user
  who_is_logged_in
  homepage
end

def whitespace
  puts <<-EOF








  EOF
end