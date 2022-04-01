class Game < ApplicationRecord
    validates :name, :age, :price, :stock, presence: true
end
