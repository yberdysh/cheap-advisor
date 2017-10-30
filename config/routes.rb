Rails.application.routes.draw do
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root 'pages#home'

  get 'restaurants', to: "restaurants#index"

  post 'restaurants', to: "restaurants#create"

  get 'restaurants/:id', to: "restaurants#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
