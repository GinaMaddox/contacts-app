class Api::ContactsController < ApplicationController
  

  def index
    # if current_user
    #  contacts = current_user.contacts
     @contacts = Contact.all
     render "index.json.jbuilder"
    # else
    #   render json: []
    # end
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  def create
    contact = Contact.new(
      first_name: params[:first_name],
      # middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
      # bio: params[:bio],
      # user_id: current_user.id    
      )

    contact.save
    render "show.json.jbuilder"  
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:first_name] || contact.first_name
    @contact.middle_name = params[:middle_name] || contact.middle_name
    @contact.last_name = params[:last_name] || contact.last_name
    @contact.email = params[:email] || contact.email
    @contact.phone_number = params[:phone_number] || contact.phone_number
    @contact.bio = params[:bio] || contact.bio
    
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
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render json: {message: "Contact deleted"}
  end
end

