Rails.application.routes.draw do
  get 'send/index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  resources :todo_lists do
    resources :todo_tasks do
      member do
       patch :complete
      end
    end
  end
  get 'send' => 'send#index'
  post 'send' => 'send#create'
  devise_for :users
  root to: "todo_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
