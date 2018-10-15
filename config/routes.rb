Rails.application.routes.draw do

  namespace :account do
    resources :projects do
      resources :tasks
      put 'complete_task', to: 'account/tasks#complete', as: :complete_tasks

    end
  end
  root 'dashboard#index'

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
