require 'unirest'

#INDEX ACTION
# response = Unirest.get("localhost:3000/api/contacts")
# contacts = response.body
# p response.body

#SHOW ACTION
# contact_id = 5
# response = Unirest.get("localhost:3000/api/contacts/#{contact_id}")
# p response.body

# #create action
# response = Unirest.post("http://localhost:3000/api/contacts", 
#   parameters: {
#     first_name: "Taylor",
#     last_name: "Thompson",
#     email: "TT@gmail.com",
#     phone_number: "9876543221"
#   })
# p response.body

# # update action
# # p "Which item would you like to update?"
# # recipe_id = gets.chomp
contact_id =  7
response = Unirest.patch("http://localhost:3000/api/contacts/#{contact_id}",
  parameters: {
    first_name: "Judd",
    last_name:  "Hickinbotham",
    email: "jh@gmail.com",
    phone_number: " "
  })
p response.body


# # destroy
contact_id = 4
response = Unirest.delete("http://localhost:3000/api/contacts/#{contact_id}")
p response.body