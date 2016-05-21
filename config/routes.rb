Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create]

  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
end
