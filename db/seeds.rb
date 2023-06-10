5.times do
  shop = Shop.create!(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.unique.full_address,
    holiday: 'Sunday',
  )
  puts "\"#{shop.name}\" has created!"
end