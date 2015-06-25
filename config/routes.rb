Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
end
