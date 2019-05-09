# def adopt?
#   puts <<-EOF
#   -----------------------------------------------------
#   Would you like to adopt this pet? Enter 'yes' or 'no'
#   -----------------------------------------------------
#   EOF
#   answer = gets.chomp.downcase
#   if answer == 'yes'
#     Adoption.find_or_create_by(character_id: CLI.current_result.id, user_id: CLI.current_user.id)
#   elsif answer == 'no'
#     not_adopt
#   end
# end


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

def runner
got_logo
welcome
get_user
who_is_logged_in
homepage
end



def white_space
    puts <<-EOF



















    EOF
end



def breed_choices
prompt = TTY::Prompt.new
search_query = prompt.select("Select a breed", %w(Braavosi
Dornish Dothraki Free_Folk Ironborn
Northmen Rivermen Valemen
Valyrian Westeros SURPRISE_ME!!!") )

  search_by_breed(search_query.to_s)
end

def search_by_breed(selection)
  if selection == "Braavosi"
    puts <<-EOF
      ~~~~~~~~~~~~~~~~~~~~~~~~~~
           Valar Morgolis!
      ~~~~~~~~~~~~~~~~~~~~~~~~~~
      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
  elsif selection == "Dornish"
    puts <<-EOF
      ~~~~~~~~~~~~~~~~~~~~
        Dorn has no king
      ~~~~~~~~~~~~~~~~~~~~
      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Dothraki"
       puts <<-EOF
      ~~~~~~~~~~~~~~~~~~~~~~~~
      Yer jalan atthirari anni
      ~~~~~~~~~~~~~~~~~~~~~~~~
      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Free_Folk"
       puts <<-EOF
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      These are the free folk indeed
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      EOF
    breed = 'Free Folk'
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Ironborn"
      puts <<-EOF
            くコ:彡
      ~~~~~~~~~~~~~~~~~~~~~~~~~~
      What is dead my never die!
      ~~~~~~~~~~~~~~~~~~~~~~~~~~
      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Northmen"
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
      >>>>>>>>>>>>>>>>>>>>>>>>>>
          WINTER IS COMING!
      >>>>>>>>>>>>>>>>>>>>>>>>>>
      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Rivermen"
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
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Valemen"
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Valyrian"
    breed = selection
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
  adopt?
    elsif selection == "Westeros"
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    else selection == "SUPRISE_ME!!!"
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