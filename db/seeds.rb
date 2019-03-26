# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Donation.destroy_all
Charity.destroy_all
Reward.destroy_all
UserReward.destroy_all

<<<<<<< HEAD
# 30.times do 
#     user = User.create({
#       name: Faker::name.name,
#       account_number: Faker::bank.account_number
#       ammount_donated: Faker::number.within(1..1000)
#     })
# end

User.create(name: "Name 1", account_number: 1234567890)
User.create(name: "Name 2", account_number: 1236547890)
User.create(name: "Name 3", account_number: 1234569870)
User.create(name: "Name 4", account_number: 3214567890)
  
  
# 30.times do
#     donation = Donation.create({
#       ammount: Faker::number.within(1..100),      
#     })
# end


Charity.create(name: "James", description: "description", age: 15)
Charity.create(name: "Pascasie", description: "description" ,age: 17)
Charity.create(name: "Faida", description: "description", age: 12)
Charity.create(name: "Alex", description: "description", age: 4)
Charity.create(name: "Mutoni", description: "description",age: 5)

Reward.create(level: "bronze")
Reward.create(level: "silver")
Reward.create(level: "gold")
Reward.create(level: "platinum")
=======
30.times do 
    User.create(
    name: Faker::Name.unique.name,
    account_number: Faker::Bank.unique.account_number
    )
end
>>>>>>> 5484c9f23fb6daec1e620c8aa4aba3d80cc296d1
  


10.times do
    Charity.create(
    name: Faker::Company.unique.name,
    description: Faker::Company.industry    
    )
end

100.times do
    Donation.create(
    user_id: User.all.sample.id,
    charity_id: Charity.all.sample.id,
    amount: Faker::Number.within(1..100),      
    )
end

Reward.create(level: "Bronze")
Reward.create(level: "Silver")
Reward.create(level: "Gold")
Reward.create(level: "Platinum")

def create_user_reward
    User.all.each do |user|
        UserReward.create(user_id: user.id, reward: Reward.find_by(level: "Bronze"))
    end
end

create_user_reward
puts "Hello"