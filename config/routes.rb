Rails.application.routes.draw do
  resources :books do
    member do
      get :new_import
      post :create_import
      get :import
    end
  end
  devise_for :users

  root "books#index"
end
