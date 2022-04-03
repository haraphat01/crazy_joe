class Game < ApplicationRecord
    validates :name, :age, :price, :stock, :image, presence: true
    
    has_one_attached :image
    belongs_to :customer
    belongs_to :sale
    
end
