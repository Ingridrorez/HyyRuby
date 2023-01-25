Rails.application.routes.draw do
  devise_for :users
  resources :studium_rubies
#  resources :sessions, only: [:destroy]

  #match '/signout', to: 'sessions#destroy', via: :delete

  #get 'home/index'
  #get 'say/hello'
 # get 'say/goodbye'
 get 'home/about'
  root 'home#index'
devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
