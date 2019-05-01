Rails.application.routes.draw do
  get 'home/index'
  post '/index', to: 'home#create'

  root 'home#index'
end
