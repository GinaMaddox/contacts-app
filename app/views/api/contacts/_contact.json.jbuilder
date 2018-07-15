json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.email contact.email
json.phone_number contact.phone_number
json.bio contact.bio


json.formatted do 
  json.friendly_updated_at contact.updated_at
  json.full_name contact.full_name
  json.japanese_country_code contact.japanese_country_code
end
json.user contact.user

