# def search_by_breed(num)
#   if num == "1"
#     puts <<-EOF
#
#
#       --------------------------
#            Valar Morgolis!
#       --------------------------
#       EOF
#     breed = 'Braavosi'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#   elsif num == "2"
#     puts <<-EOF
#
#       --------------------
#         Dorn has no king
#       --------------------
#       EOF
#     breed = 'Dornish'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "3"
#        puts <<-EOF
#    ,
# _,,)\.~,,._
# (()`  ``)\))),,_
#  |     \ ''((\)))),,_          ____
#  |6`   |   ''((\())) "-.____.-"    `-.-,
#  |    .'\    ''))))'                  \)))
#  |   |   `.     ''                     ((((
#  \, _)     \/                          |))))
#   `'        |                          (((((
#             \                  |       ))))))
#              `|    |           ,\     /((((((
#               |   / `-.______.<  \   |  )))))
#               |   |  /         `. \  \  ((((
#               |  / \ |           `.\  | (((
#               \  | | |             )| |  ))
#                | | | |            / | |  '
#                | | /_(           /_(/ /
#                /_(/__]           \_/_(
#               /__]                /__]
#               ------------------------
#               Yer jalan atthirari anni
#               ------------------------
#       EOF
#     breed = 'Dothraki'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "4"
#        puts <<-EOF
#
#        .---.
#        |---|
#        |---|
#        |---|
#    .---^ - ^---.
#    :___________:
#       |  |//|
#       |  |//|
#       |  |//|
#       |  |//|  ------------------------------
#       |  |//|  These are the free folk indeed
#       |  |//|  ------------------------------
#       |  |.-|
#       |.-'**|
#        \***/
#         \*/
#          V
#
#       EOF
#     breed = 'Free Folk'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "5"
#       puts <<-EOF
#             くコ:彡
#       --------------------------
#       What is dead my never die!
#       --------------------------
#       EOF
#     breed = 'Ironborn'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "6"
#       puts <<-EOF
#              _
#             / \      _-'
#           _/|  \-''- _ /
#      __-' { |          \
#          /             \
#
#                 "o.  |o }
#          |            \ ;
#                        ',
#             \_         __\
#
#               ''-_    \.//
#                 / '-____'
#                /
#              _'
#            _-'
#       --------------------------
#           WINTER IS COMING!
#       --------------------------
#       EOF
#     breed = 'Northmen'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "7"
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
#     breed = 'Rivermen'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "8"
#       puts<<-EOF
#
#
#           ------------------------------------
#           Chaos isn't a pit. Chaos is a ladder.
#           ---------------------------------------
#       EOF
#     breed = 'Valemen'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     elsif num == "9"
#     breed = 'Valyrian'
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
#         ; .
#         ------------------------------------
#                  HOLD THE DOOR!
#         ------------------------------------
#
#     EOF
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#
#   elsif num == "10"
#     breed = 'Westeros'
#   CLI.current_result = Character.where(breed: breed).sample
#   search_results(CLI.current_result)
#     else num == "11"
#        puts <<-EOF
#       ---------------------------------------------------------------------
#       You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!
#       ---------------------------------------------------------------------
#
#       EOF
#   CLI.current_result = Character.all.sample
#   search_results(CLI.current_result)
#   end
#
# end
