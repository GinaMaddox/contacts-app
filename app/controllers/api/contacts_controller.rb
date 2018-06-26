class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render "one_contact_view.json.jbuilder"
  end

# @contact is the instance method that says what will be displayed tp user
# Contact (capital C is the model.)


  def all_contacts_action
    @contacts = Contact.all
    render "all_contacts_view.json.jbuilder"
  end
end

