Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :dogruns do
    collection do
      get 'search'
    end
  end
  root to: "dogruns#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
