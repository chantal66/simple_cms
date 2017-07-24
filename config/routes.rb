Rails.application.routes.draw do
  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end
end
