Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/profiles', to: 'profile#show', as: :profile
  # get '/profiles/new', to: 'profile#new', as: :new_profile
  # get '/profiles/:id/edit', to: 'profile#edit', as: :edit_profile
  # patch '/profiles', to: 'profile#update', as: :edit_profile
  resources :books do
    resources :transactions, only: [:new, :create, :show]

  end
  resources :user do
    resources :profile, except: [:destroy,]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

