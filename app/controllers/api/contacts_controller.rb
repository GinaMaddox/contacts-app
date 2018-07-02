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


  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by[id: contact_id]
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      first_name = params[:input_name],
      last_name = params[:last_name],
      email = params[:input_email],
      phone_number = params[:input_phone_number])
    @contact.save
    render "show.json.jbuilder"  
  end
 def update
   contact_id = params[:id]
    @contact = Contact.find_by(id: product_id)
    @contact.name = params[:input_name] || @contact.name,
    @contact.price = params[:input_price] || @contact.price,
    @contact.image_url = params[:input_image_url] || @contact.image_url,
    @contact.description = params[:input_description] || @contact.description
    @contact.save
    render "show.json.jbuilder"
  end
  # def update
  #   @contact.update(
  #     first_name: params[:input_first_name] || @contact.first_name,
  #     last_name: params[:input_last_name] || @contact.last_name,
  #     email: params[:input_email] || @contact.email,
  #     phone_number: params[:input_phone_number] || @contact.phone_number
  #     )
  #   render "show.json.jbuilder"
  # end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: product_id)
    @contact.destroy
    render json: {message: "Contact deleted"}
  end

end

