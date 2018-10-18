Rails.application.routes.draw do
  resources :todo_lists do
     resources :todo_tasks
  end
  devise_for :users
  root to: "todo_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
