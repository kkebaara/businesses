class User < ApplicationRecord
    has_many :favorites, dependent: destroy
    has_many :businesses, through: favorites 
end
