Rails.application.routes.draw do
  #get 'qr_codes' => 'qr_codes#new'

  get 'password_resets/new'
  get 'password_resets/edit'
  #get 'sessions/new'
  #get 'users/new'
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  #get 'apiresponse' => 'static_pages#apiresponse'
  get 'apiresponse' => 'invoice_payments#apiresponse'
  get 'processtoken' => 'invoice_payments#'

  get 'card' => 'users#card'
  get 'signup' => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
#  resources :qr_codes,          only: [:create, :destroy]
  resources :qr_codes,          only: [:create, :destroy, :update]
  resources :static_pages, defaults: { format: 'json' }
end



