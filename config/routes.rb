Rails.application.routes.draw do
  resources :books do
    member do
      get :new_import
      post :create_import
      post :translate
      get :preview
      post :convert
      get :read
    end

    resources :parsed_chapters do
      member do
        get :read
      end
    end

    resources :chapters do
      member do
        get :read
      end
    end
  end
  devise_for :users

  root "books#index"
end
