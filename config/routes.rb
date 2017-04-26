Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'
end
