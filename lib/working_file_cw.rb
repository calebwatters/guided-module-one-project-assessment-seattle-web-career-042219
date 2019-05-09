def adopt?
  puts <<-EOF
  -----------------------------------------------------
  Would you like to adopt this pet? Enter 'yes' or 'no'
  -----------------------------------------------------
  EOF
  answer = gets.chomp.downcase
  if answer == 'yes'
    Adoption.find_or_create_by(character_id: CLI.current_result.id, user_id: CLI.current_user.id)
  elsif answer == 'no'
    not_adopt
  end
end


def not_adopt
   puts <<-EOF
  ----------------------------------------------------------
            Would you like to search for a new pet?

                    If so please type 'yes'

        If not please type 'menu' to go to the homepage
  ----------------------------------------------------------
    EOF
    no_option = gets.chomp.downcase
    if no_option == 'yes'
        question
        adopt?
    elsif no_option == 'menu'
        homepage
    else
        puts 'That is not a valid input'
        not_adopt   
    end
end


def white_space
    puts <<-EOF



















    EOF
end


