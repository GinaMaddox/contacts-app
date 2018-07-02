require 'unirest'

response = Unirest.post("http://localhost:3000/contacts", 
  parameters: {
    first_name: " "
    last_name: " "
    email: " "
    phone_number: ""
  }
)

response = Unirest.patch("http://localhost:3000/contacts/#{contact_id}",
  parameters: {

  }
)

response = Unirest.delete("htp://localhost:3000/contacts/#{contact_id}")