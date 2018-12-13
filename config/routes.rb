Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :questionnaires, only: [:show, :create, :update]
      resources :tasks, only: [:show, :create] 
    end
  end
end
