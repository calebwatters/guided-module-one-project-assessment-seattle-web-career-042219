class User < ActiveRecord::Base
    has_many  :adoptions
    has_many :characters, through: :adoptions
end
