Rails.application.routes.draw do
  resources :books do
    member do
      get :new_import
      post :create_import
    end

    resources :parsed_chapters do
      member do
        get :translate
      end
    end
  end
  devise_for :users

  root "books#index"
end
