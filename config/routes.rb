Rails.application.routes.draw do

  # send email by button click on show  form...
    # get :product_email, to: 'products#product_email', as: :product_email
  get :holdtag_email, to: 'tbl_quality_issues#holdtag_email', as: :holdtag_email

  resources :tbl_customers
  resources :healthchecks
  resources :parts
  resources :operations
  resources :machines
  resources :depts
  resources :tbl_htpc_reasons
  resources :tbl_hold_tag_sos
  resources :tbl_quality_issues
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  apipie
  resources :country_of_origins do
    member do
      delete :delete_document_attachment
    end
    get :autocomplete_pfeature_name, :on => :collection
  end
 
  resources :product_features
  resources :products
  resources :pfeatures

  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root "home#index"

  get 'home/index'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
