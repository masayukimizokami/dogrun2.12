Rails.application.routes.draw do
  #get 'profiles'     => 'profiles#index'
  #get 'profiles/:id' => 'profiles#show'
  #get 'profiles/:id/edit' => 'profiles#edit'
  #patch 'profiles/:id'  => 'profiles#update'
  resources :profiles
  devise_for :users
  resources :comments
  resources :users
  resources :dogruns do
    collection do
      get 'search'
    end
  end
  root to: "dogruns#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
