Rails.application.routes.draw do
  resources :books do
    member do
      get :new_import
      post :create_import
      post :translate
      get :read
    end

    resources :parsed_chapters do
    end
  end
  devise_for :users

  root "books#index"
end
