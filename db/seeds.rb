puts "Deleting data..."

Order.destroy_all
Customer.destroy_all
Coffee.destroy_all

puts "Deleted!"

6.times do 
    Coffee.create(title: Faker::Coffee.blend_name)
end

6.times do
    Customer.create(name: Faker::Name.name)
end

16.times do
    Order.create(price: rand(1..10), coffee_id: Coffee.all.sample.id, customer_id: Customer.all.sample.id)
end