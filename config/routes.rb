Rails.application.routes.draw do
  # all devise routes except for registrations
  devise_for :users, skip: [:registrations]
  # custom registration route and controller
  devise_scope :user do
    get 'users/sign_up', to: 'users/registrations#new', as: :new_user_registration
    post '/users', to: 'users/registrations#create', as: :user_registration
  end

  resources :groups, except: [:show] do
    resources :expenses, except: [:show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # for signed in users root path is groups#index
  authenticated :user do
    root "groups#index", as: :authenticated_root
  end

  root "welcome#index"
end
