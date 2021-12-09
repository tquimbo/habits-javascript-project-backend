Rails.application.routes.draw do

  resources :tasks
  resources :skills


  Rails.application.routes.draw do

  root 'api/v1/skills#home'

  namespace :api do
    namespace :v1 do  
      resources :skills, only: [:index]
      resources :tasks, only: [:index]
    end
  end
end
    # resources :users
    # resources :habits
    
    # root :to => 'habits#index"

end
