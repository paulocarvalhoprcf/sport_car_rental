Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, except: %I[edit update] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:destroy, :update, :edit, :show]
  get 'all', to: 'bookings#all', as: 'all'
end
