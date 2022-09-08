Rails.application.routes.draw do
  get 'main/test'
  post 'main/test'
  get '/' , to: 'main#home'
  post 'main/check'
  get 'main/check'
  get 'main/cal'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
