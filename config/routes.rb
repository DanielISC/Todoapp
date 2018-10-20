Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  resources :todo_lists do
    resources :todo_tasks do
      member do
       patch :complete
      end
    end
  end
  devise_for :users
  root to: "todo_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
