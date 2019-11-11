Rails.application.routes.draw do
  root 'work_orders#index'

  resources :work_orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
