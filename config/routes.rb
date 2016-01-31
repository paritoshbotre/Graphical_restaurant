Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants do
    member do 
      get :photo
    end
  end
end
