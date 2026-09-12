Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books
  root 'user_books#index'

  resources :books do
    member do
      get :delete
    end
  end

  get "up" => "reails/health#show", as: :rails_health_check
end
