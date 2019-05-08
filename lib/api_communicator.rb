require 'rest-client'
require 'json'
require 'pry'

#info from API parsed into JSON
def character_info_hash
  total_results = []
  page_rage = (1..4).to_a
  page_rage.each do |num|
      # Build the URL and download the results
      url = "https://www.anapioficeandfire.com/api/characters?page=#{num}"
      response = RestClient.get(url)
      data = JSON.parse(response)
      total_results<< data
    end
      total_results.flatten
end


#Creates character instances with name/breed/gender/popularity/houses
# attributes and adds info to the characters database---data collected from
#ice-and-fire api

def character_attributes
character_names_array = []

  character_info_hash.each do |character|
    if character['tvSeries'].first != ""

      if character['name']==""
        name = character['aliases'].first
        gender = character['gender']
        popularity = character['tvSeries'].length
        house = character_house_hash(character)
        if character['culture'] == ""
          breed = "uknown"
          house = character_house_hash(character)
        else
          breed = character['culture']
          house = character_house_hash(character)
        end
        Character.create(name: name,  breed: breed, gender: gender, popularity: popularity, house: house)
      else
        name = character['name']
        gender = character['gender']
        popularity = character['tvSeries'].length
        house = character_house_hash(character)
        if character['culture'] == ""
          breed = "uknown"
        else
          breed = character['culture']
        end
        Character.create(name: name,  breed: breed, gender: gender, popularity: popularity, house: house)
        end
      end
    end
  return nil
end

#HELPER METHOD---returns house name for given character as a string
def character_house_hash(character)
  if character['allegiances'].any?
      url = character['allegiances'][0]
      response = RestClient.get(url)
      data = JSON.parse(response)
      shelter = data['name']
  else
    shelter = 'currenty wandering the land'
  end
  shelter
end
