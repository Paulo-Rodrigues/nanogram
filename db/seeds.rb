puts "seeding"

10.times do 
  Account.create(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

puts "done!"
