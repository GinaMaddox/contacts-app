class Contact < ApplicationRecord

  belongs_to :user
  
  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{last_name}, #{first_name}"
  end

  def japanese_country_code
    "+81 #{phone_number}"
  end
end
