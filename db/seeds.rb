# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# contact = Contact.new(first_name: "Wolfie", middle_name last_name: "Maddox", email: "wolf@gmail.com", phone_number: "123432")

# p Contact.count
# p contact

# contact = Contact.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number)

# p contact

 # 10.times do 
 #   contact = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number)
 #   contact.save
 # end

# users = User.all
# contacts = Contact.all

# contacts.each do |contact|
#   contact.user_id = users.sample.id
#   contact.save
# end

contacts = Contact.all
group = Group.all

contacts.each do |contact|
  ContactGroup.create(contact_id: contact.id, group_id: group.sample.id)
  ContactGroup.create(contact_id: contact.id, group_id: group.sample.id)
end