class Character < ActiveRecord::Base
    has_one :user, through: :adoption
    belongs_to :house
    has_many :tvshows
end