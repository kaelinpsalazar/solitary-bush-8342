class Ingredient < ApplicationRecord
   belongs_to :recipe
   validates :name, :cost, presence: true
end
