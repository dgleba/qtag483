Rails.application.routes.draw do

  apipie
  resources :country_of_origins do
    member do
      delete :delete_document_attachment
    end
  end
  
 

  resources :product_features
  resources :products
  resources :pfeatures
#
  resources :country_of_origins do
    get :autocomplete_pfeature_name, :on => :collection
  end

  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root "home#index"


  get 'home/index'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
