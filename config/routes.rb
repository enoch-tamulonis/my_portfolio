Rails.application.routes.draw do
  get 'project-examples', to: 'pages#project_examples'
  get 'contact', to: 'pages#contact'

  resource :contact, only: [:create], controller: 'contact'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
