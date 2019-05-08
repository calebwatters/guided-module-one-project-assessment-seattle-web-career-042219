class Character < ActiveRecord::Base
    has_one :user, through: :adoption
    has_many :tvshows
end