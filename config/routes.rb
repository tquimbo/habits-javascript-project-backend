Rails.application.routes.draw do

    resources :users
    resources :habits
    
    root :to => 'habits#index"

    get '/habits' => 'habits#index'
end

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
