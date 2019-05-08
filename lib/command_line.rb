
def welcome
  puts <<-'EOF'
  --------------------------------------------------------------

  Welcome to the adoption agency for Game of Thrones Characters!

  --------------------------------------------------------------

  EOF
end

def get_character_from_user
  puts "Please enter an attribute"
  search_query = gets.chomp.downcase
  return search_query
  # use gets to capture the user's input. This method should return that input, downcased.
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
