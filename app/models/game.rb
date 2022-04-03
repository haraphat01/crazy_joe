class Game < ApplicationRecord
    validates :name, :age, :price, :stock, :image, presence: true
    
    has_one_attached :image
    belongs_to :customer
    has_many :sales
    
end
