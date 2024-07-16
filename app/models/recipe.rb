class Recipe < ApplicationRecord
   has_many :ingredients 
   validates :name, :complexity, :genre, presence: true
end
