class Game < ApplicationRecord
    validates :name, :age, :price, :stock, presence: true
    belongs_to :customer
    has_one_attached :image
end
