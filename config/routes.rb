Rails.application.routes.draw do

  devise_for :users
  resources :fournisseurs do
    resources :produits
  end

  post 'auth_user' => 'authentication#authenticate_user'

  root to: "fournisseurs#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
