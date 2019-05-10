def adopt?
  route_adoption(prompt)
end


def prompt
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
