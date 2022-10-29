Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :portfolios, only: [:index, :show]
      resources :sites, only: [:index, :show]
      resources :spaces, only: [:index, :show]
    end
  end
end
