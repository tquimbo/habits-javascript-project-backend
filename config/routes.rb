Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do  
      resources :skills, only: [:index, :create]
      resources :tasks, only: [:index]
      resources :users, only: [:create]
    end
  end
end
    
