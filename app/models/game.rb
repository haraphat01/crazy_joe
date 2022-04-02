class Game < ApplicationRecord
    validates :name, :age, :price, :stock, presence: true
    belongs_to :customer
end
