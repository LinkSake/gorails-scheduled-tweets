Rails.application.routes.draw do
  root to: 'main#index'

  get 'about', to: 'about#index'

  get 'signup', to: 'registration#new'
  post 'signup', to:'registration#create'
end
