class Game < ApplicationRecord
    validates :name, :age, :price, :stock, :image, presence: true
    
    has_one_attached :image
end
