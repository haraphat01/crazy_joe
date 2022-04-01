class Console < ApplicationRecord
    validates :name, :manufacturer, :colour, :price, :status, :stock, presence: true
end
