



def search_by_breed(selection)
  if selection == "Braavosi"
    puts <<-EOF
             .--~~,__
:-....,-------`~~'._.'
 `-,,,  ,_      ;'~U'
  _,-' ,'`-__; '--.
 (_/'~~      ''''(;
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
. ---`'.._...-----..._..-'`  '-.
/                               |
|  '-/                    ``-'  /
 '._|          _           |_.'
    |    O    / |    O    |
    |         | |         |
     |        |"/         /
      '.    =='^'==     .'
jgs      `'------------'`
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


       _______\)%%%%%%%%._
`''''-'-;   % % % % %'-._
       :b) \            '-.
       : :__)'    .'    .'
       :.::/  '.'   .'
       o_i/   :    ;
              :   .'
               ''`

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
       __         __
      /  |.-"""-./  |
      ()    -   -  ()
       |   o   o   |
        ().-'''-.  /
        '-|__Y__/-'
           `---`
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
  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  If you think this has a happy ending,
  you haven’t been paying attention.
  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      EOF
    breed = selection
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Valemen"
    breed = selection

    puts <<-EOF
    .-._                                                   _,-,
 `._`-._                                           _,-'_,'
    `._ `-._                                   _,-' _,'
       `._  `-._        __.-----.__        _,-'  _,'
          `._   `#==="""           """===#'   _,'
             `._/)  ._               _.  (\_,'
              )*'     **.__     __.**     '*(
              #  .==..__  ""   ""  __..==,  #
              #   `"._(_).       .(_)_."'   #
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
The man who passes the sentence should swing the sword
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


    EOF

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
      >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
       Chaos isn’t a pit. Chaos is a ladder.
      >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    EOF
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    elsif selection == "Westeros"
    breed = selection
    puts <<-EOF
    .-"""-.
   /      o|
  |    o   0).-.
  |       .-;(_/     .-.
  ;     /  /)).---._|  |   ,
   ``'.  '  /((       `'-./ _/|
      ``  .'  )        .-.;`  /
       '.             |  `|-'
         '._        -'    /
            ``""--`------`

  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  Yes. All men must die, but we are not men.
  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    EOF
  CLI.current_result = Character.where(breed: breed).sample
  search_results(CLI.current_result)
  adopt?
    else selection == "SUPRISE_ME!!!"
       puts <<-EOF
 _      _
: `.--.' ;              _....,_
.'      `.      _..--'"'       `-._
:          :_.-'"                  .`.
:  6    6  :                     :  '.;
:          :                      `..';
`: .----. :'                          ;
  `._Y _.'               '           ;
    'U'      .'          `.         ;
     `:   ;`-..___       `.     .'`.
     _:   :  :    ```"''"'``.    `.  `.
   .'     ;..'            .'       `.'`
  `.......'              `........-'`
  ---------------------------------------------------------------------
  You wildling, you!! Livin on the edge huh?? What if you get Geoffry?!
  ---------------------------------------------------------------------
      EOF
  CLI.current_result = Character.all.sample
  search_results(CLI.current_result)
  adopt?
  end

end
