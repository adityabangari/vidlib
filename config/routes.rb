Rails.application.routes.draw do
 


    resources :video_models

    post 'details', to: 'video_models#json_data'

    get '/details/json_show', to: 'video_models#json_show'

  



  #resources :moviedata

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
