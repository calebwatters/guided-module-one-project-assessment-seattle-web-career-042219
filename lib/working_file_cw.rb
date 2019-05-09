# def adopt?
#   puts <<-EOF
#   -----------------------------------------------------
#   Would you like to adopt this pet? Enter 'yes' or 'no'
#   -----------------------------------------------------
#   EOF
#   def update

def get_user_input_update
    prompt = TTY::Prompt.new 
    options_array = ["Change the name of one of your pets", "Put your pet back up for adoption", "Return to the homepage"]
    options_list = options_array.each{|options| options.to_s}
    user_input = prompt.select("Above is a list of your current pets. Choose an option below.", options_list )

end

def update
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


# def not_adopt
#    puts <<-EOF
#   ----------------------------------------------------------
#             Would you like to search for a new pet?

#                     If so please type 'yes'

#         If not please type 'menu' to go to the homepage
#   ----------------------------------------------------------
#     EOF
#     no_option = gets.chomp.downcase
#     if no_option == 'yes'
#         question
#         adopt?
#     elsif no_option == 'menu'
#         homepage
#     else
#         puts 'That is not a valid input'
#         not_adopt   
#     end
# end

# def runner
# got_logo
# welcome
# get_user
# who_is_logged_in
# homepage
# end



def white_space
    puts <<-EOF



















    EOF
end



# def breed_choices
# prompt = TTY::Prompt.new
# search_query = prompt.select("Select a breed", %w(Braavosi
# Dornish Dothraki Free_Folk Ironborn
# Northmen Rivermen Valemen
# Valyrian Westeros SURPRISE_ME!!!") )

#   search_by_breed(search_query.to_s)
# end

# def search_by_breed(selection)
#   if selection == "Braavosi"
#     puts <<-EOF
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~
#            Valar Morgolis!
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#   elsif selection == "Dornish"
#     puts <<-EOF
#       ~~~~~~~~~~~~~~~~~~~~
#         Dorn has no king
#       ~~~~~~~~~~~~~~~~~~~~
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Dothraki"
#        puts <<-EOF
#       ~~~~~~~~~~~~~~~~~~~~~~~~
#       Yer jalan atthirari anni
#       ~~~~~~~~~~~~~~~~~~~~~~~~
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Free_Folk"
#        puts <<-EOF
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#       These are the free folk indeed
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#       EOF
#     breed = 'Free Folk'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Ironborn"
#       puts <<-EOF
#             くコ:彡
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~
#       What is dead my never die!
#       ~~~~~~~~~~~~~~~~~~~~~~~~~~
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Northmen"
#       puts <<-EOF
#              _
#             / \      _-'
#           _/|  \-''- _ /
#      __-' { |          \
#          /             \

#                 "o.  |o }
#          |            \ ;
#                        ',
#             \_         __\

#               ''-_    \.//
#                 / '-____'
#                /
#              _'
#            _-'
#       >>>>>>>>>>>>>>>>>>>>>>>>>>
#           WINTER IS COMING!
#       >>>>>>>>>>>>>>>>>>>>>>>>>>
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Rivermen"
#       puts <<-EOF
#                          _.'.__
#                       _.'      .
# ':'.               .''   __ __  .
#   '.:._          ./  _ ''     "-'.__
# .'''-: """-._    | .                "-"._
#  '.     .    "._.'                       "
#     '.   "-.___ .        .'          .  :o'.
#       |   .----  .      .           .'     (
#        '|  ----. '   ,.._                _-'
#         .' .---  |.""  .-:;.. _____.----'
#         |   .-""""    |      '
#       .'  _'         .'    _'
#      |_.-'            '-.'
#       EOF
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Valemen"
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Valyrian"
#     breed = selection
#     puts <<-EOF
#             /           /
#             /' .,,,,  ./
#            /';'     ,/
#           / /   ,,//,`'`
#          ( ,, '_,  ,,,' ``
#          |    /@  ,,, ; `
#         /    .   ,''/' `,``
#        /   .     ./, `,, ` ;
#     ,./  .   ,-,',` ,,/'','
#    |   /; ./,,'`,,'' |   |
#    |     /   ','    /    |
#     \___/'   '     |     |
#       `,,'  |      /     `\
#            /      |        ~\
#           '       (
#          :
#         ; .         --
#       :            ;  "

#     EOF
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     elsif selection == "Westeros"
#     breed = selection
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   adopt?
#     else selection == "SUPRISE_ME!!!"
#        puts <<-EOF
#       ---------------------------------------------------------------------
#       You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!
#       ---------------------------------------------------------------------
#       EOF
#   CLI.current_result = Character.all.sample
#   search_results(CLI.current_result)
#   adopt?
#   end

# end]


# def get_pet_names

# prompt = TTY::Prompt.new
#  pet_choice = prompt.select("Select a pet", current_pet_name_array)
#  pet_choice
# end

# def get_menu_prompt
#     prompt = TTY::Prompt.new
#     options_array = ['Begin Adoption Process', 'Manage your current pets', 'Logout', 'Quit to desktop']
#     options_list = options_array.each {|name| name.to_s}
#         selection = prompt.select("What would you like to do?", options_list)

# end


# def homepage
#     puts <<-EOF
#                                     Current User: #{CLI.current_user.name}




#     EOF
#     answer = get_menu_prompt

#     if answer == "Begin Adoption Process"
#       question

#     elsif answer == "Manage your current pets"
#       if CLI.current_user.adoptions.count== 0
#         puts "you don't have any pets yet!"
#         homepage
#       else
#         update
#       end 
#     elsif answer == 'Logout'
#       runner
#     elsif answer == 'Quit to desktop'
#       exit!
#     else
#       puts "lol try again!!! press 1 or 2"
#       homepage
#     end

#   end

