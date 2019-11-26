Rails.application.routes.draw do
  resources :privilegios
  devise_for :users
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "bars#index"
end
