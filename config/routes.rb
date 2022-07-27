Rails.application.routes.draw do
    root :to => 'locations#index'
    resources :users
    resources :jobs
    resources :applies
    get '/locations/result' => 'locations#results'
    resources :locations
    get '/applicants/new/:id' => 'applies#new' , :as => 'new_applicant'
    get '/applicants/:id' => 'jobs#applicants', :as => 'job_applicants'
    post '/applicants/:id' => 'applies#create', :as => 'job_apply'

    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
end

