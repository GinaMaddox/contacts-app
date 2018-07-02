Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/one_contact_url" => "contacts#one_contact_action"
  # get "/all_contacts_url" => 
  # contacts#all_contacts_action"
    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    patch "/contacts/:id" => "contacts#update"
    delete "contacts/:id" => "contacts#destroy"
  end
end
