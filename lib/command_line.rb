
def welcome
  puts <<-'EOF'
  --------------------------------------------------------------

  Welcome to the adoption agency for Game of Thrones Characters!

  --------------------------------------------------------------
                      Please Enter Your Name
  ______________________________________________________________
  EOF
end

def find_characters_by_name
  # binding.pry
  puts "Please enter a character name"
  search = gets.chomp.downcase
  name = search.split.each { |name| name.capitalize! }.join(' ')
  results = Character.find_by(name: name)
  puts "Their name is #{results.name}"
  puts "Their breed is #{results.breed}"
  puts "Their gender is #{results.gender}"
  puts "From a great shelter called #{results.house}"
  puts "Their popularity is #{results.popularity}"
end

def search_by_breed(num)
  if num == "1"
    breed = 'Braavosi'
  results = Character.find_all(breed: breed)
  puts "Their name is #{results.name}"
  puts "Their breed is #{results.breed}"
  puts "Their gender is #{results.gender}"
  puts "From a great shelter called #{results.house}"
  end

end

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
  else
    puts "that is not a valid input yet"
  end

end


def dragon1 
puts <<-'EOF'
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
      ___               ___  ___   ___ 
  .'|=|_.'    .'|=|`.   `._|=|   |=|_.' 
.'  |___    .'  | |  `.      |   |      
|   |`._|=. |   | |   |      |   |      
`.  |  __|| `.  | |  .'      `.  |      
  `.|=|_.''   `.|=|.'          `.|        

      EOF
end



# def get_name
#   name = gets.chomp
#   if User.find_by(name: name) == name
#     puts "Welcome back!"
#   else
#   User.create(name:name)
#   puts "Thanks, #{name}! We've run your bakground check---
#   lots of iffy stuff in there but we still think you'll make
#   an excellent parent!

#   "
# end
# end

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

# def attribute_prompt
#   puts "Below you'll find a list of breeds-- please enter the number
#   that corresponds to the breed you want your new GoT pet to have:

# 1 - Braavosi
# 2 - Dornish
# 3 - Dothraki
# 4 - Free Folk
# 5 - Ironborn
# 6 - Northmen
# 7 - Rivermen
# 8 - Valemen
# 9 - Valyrian
# 10 - Westeros
# 11 - SURPRISE ME!!!"
# search_query = gets.chomp
# response = ['You risky biscuit!!', 'Good choice!!', 'Uh oh.......',
#               "Okay, we've taken your preference into account."]
# surprise = "You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!"
#   if search_query == 11
#     puts surprise
#   else puts response.sample
#        puts 'Press enter for the big reveal.....'
#   end
# end

