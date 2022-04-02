class Customer < ApplicationRecord
    validates :customer_name, :store_name, :address, :phone, presence: true
    
end
