Rails.application.routes.draw do

  resources :users
    root 'welcome#index'

    resources :video_models

    post 'details', to: 'video_models#json_data'

    get '/details/json_show', to: 'video_models#json_show'


    get 'find', to: 'video_models#find'

    post '/video_models/new', to: 'video_models#create'


  # post 'json_post', to: 'video_models#create'


  #resources :moviedata

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
