Rails.application.routes.draw do
  resources :tasks
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'


  namespace :api, path: nil, defaults: {format: :json}, constraints: {subdomain: 'api'} do

    namespace :v1 do

      resources :tasks, except: [:edit, :new] do
        match ':id', to: 'tasks#destroy', via: [:options], as: :destroy,on: :collection
      end

    end




  end
end
