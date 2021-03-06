Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'signup', to: 'users#signup'
      post 'login', to: 'users#login'
      get 'validate', to: 'users#validate'
      resources :users, only: [:show]
      resources :questionnaires, only: [:create]
      get 'questionnaire', to: 'questionnaires#show'
      put 'questionnaire', to: 'questionnaires#update' 
      resources :tasks, only: [:show, :create] 
      resources :breaks, only: [:index, :create]
    end
  end
end
