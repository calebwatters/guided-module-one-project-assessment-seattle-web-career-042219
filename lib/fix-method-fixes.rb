# def find_characters_by_name
#   # binding.pry
#   puts "Please enter a character name"
#   search = gets.chomp.downcase
#   name = search.split.each { |name| name.capitalize! }.join(' ')
#   CLI.current_result = Character.find_by(name: name)
#     if CLI.current_result == nil
#       puts <<-EOF
#       That is not a characters name.

#       EOF

# reroute_name_search(reroute_name_search_prompt)
#     else
#   search_results(CLI.current_result)
#   adopt?
#     end

# end

# def reroute_name_search_prompt
# prompt = TTY::Prompt.new
# array =
# search_query = prompt.select("That is not a characters name.", %w(Re-enter_Name Return_To_Homepage) )
# search_query
# end

# def reroute_name_search(search_query)
# if search_query == "Re-enter_Name"
#   find_characters_by_name
# elsif
#     search_query== "Return_To_Homepage"
#   homepage
# end
# end
