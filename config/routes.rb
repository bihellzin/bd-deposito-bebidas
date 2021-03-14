Rails.application.routes.draw do
  resources :bebida_alcoolicas
  resources :pedido_clientes
  resources :pedido_fornecedors
  resources :funcionarios
  resources :fornecedors
  root "funcionarios#index"

  get "/funcionarios", to: "funcionarios#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
