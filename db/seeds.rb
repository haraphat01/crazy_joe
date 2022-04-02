# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 20.times do
#     name = Faker::Name.name
#     age = Faker::Number.decimal_part(digits: 2)
#     stock = Faker::Number.decimal_part(digits: 2)
#     price = Faker::Number.decimal_part(digits: 3)   
#     Game.create(name: name, age: age, stock: stock, price: price)

     
# end

# 20.times do
#     name = Faker::Name.name
#     manufacturer = Faker::University.name
#     colour = Faker::Color.color_name
#     price = Faker::Number.decimal_part(digits: 3)
#     status = "PAL"  
#     stock = Faker::Number.decimal_part(digits: 3) 
#     Console.create(name: name, manufacturer: manufacturer,  colour:  colour, price: price, status: status, stock: stock)

     
# end



20.times do
    name = Faker::Name.name
    store = Faker::Bank.name
    address = Faker::Address.street_address
    phone = Faker::PhoneNumber.cell_phone_in_e164
    Customer.create(customer_name: name, store_name: store,  address:  address, phone: phone)     
end