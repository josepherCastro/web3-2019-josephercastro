Rails.application.routes.draw do
  
  resources :devolucaos
  resources :retiradas
  resources :materials
  resources :unidade_medidas
  resources :funcionarios
  resources :fornecedors
  devise_for :users
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'homes/index'  
  # get "home/index"
  root to: "retiradas#index"
end
# ruby ./bin/webpack-dev-server