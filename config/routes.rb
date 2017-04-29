Rails.application.routes.draw do
  get 'users/show'

  root 'static_pages#home'
  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
                                                 sign_out: 'logout',
                                                 password: 'secret',
                                                 confirmation: 'verification',
                                                 unlock: 'unblock',
                                                 registration: 'register',
                                                 sign_up: 'cmon_let_me_in' }
  get '/users/:id', to: 'users#show', as: 'user'
  resources :events
end
