## NOTE---change your page numbers when you are actually wanting to seed all data.

require 'rest-client'
require 'json'
require 'pry'

#info from API parsed into JSON
def character_info_hash
  total_results = []
  page_rage = (1..10).to_a
  page_rage.each do |num|
      # Build the URL and download the results
      url = "https://www.anapioficeandfire.com/api/characters?page=#{num}"
      response = RestClient.get(url)
      data = JSON.parse(response)
      total_results<< data
    end
      total_results.flatten
end



def character_attributes
character_names_array = []

  character_info_hash.each do |character|
    if character['tvSeries'].first != ""

      if character['name']==""
        name = character['aliases'].first
        gender = character['gender']
        popularity = character['tvSeries'].length
        if character['culture'] == ""
        breed = "uknown"
        else
          breed = character['culture']
        end
        puts "name: #{name}, breed:#{breed}, gender: #{gender}, popularity: #{popularity}"
                # Character.create(name: name)
      else
        name = character['name']
        gender = character['gender']
        popularity = character['tvSeries'].length
        if character['culture'] == ""
        breed = "uknown"
        else
          breed = character['culture']
        end
        #turn the below statement into an attributes hash, pass into character.create
        puts "name: #{name}, breed:#{breed}, gender: #{gender}, popularity: #{popularity}"
        binding.pry
        # Character.create(name: name)
        #Hashouse.new---access only the housees related to the characters in the tv shows
      end
    end
  end
  return 'Hi'
  end

def houses_attributes
end


def house_info_hash
  total_results = []
  page_rage = (1..100).to_a
  page_rage.each do |num|
      # Build the URL and download the results
      url = "https://www.anapioficeandfire.com/api/houses?page=#{num}"
      response = RestClient.get(url)
      data = JSON.parse(response)
      total_results<< data
    end
      total_results.flatten
end

def house_attributes

  house_info_hash.each do |house|
    if house['swornMembers'].length > 20
      name = house['name']

      puts "House: #{name}"
    end
  end
  return nil
end
