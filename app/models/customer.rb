class Customer < ApplicationRecord
    validates :customer_name, :store_name, :address, :phone, presence: true
    
    has_many :games
    has_many :sales

end
