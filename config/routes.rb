Rails.application.routes.draw do
    root :to => 'locations#index'
    resources :users
    resources :jobs
    resources :applies
    get '/locations/result' => 'locations#results'
    resources :locations


    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
end

