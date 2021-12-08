Rails.application.routes.draw do

  resources :tasks
  resources :skills
    # resources :users
    # resources :habits
    
    # root :to => 'habits#index"

end
