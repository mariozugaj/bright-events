Rails.application.routes.draw do
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
  resources :users do
    member do
      get :upcoming_events, :created_events, :past_attended_events
    end
  end
  resources :attendances, only: [:create, :destroy]
end
