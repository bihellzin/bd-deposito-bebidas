Rails.application.routes.draw do
  resources :fornecedors
  root "funcionarios#index"

  get "/funcionarios", to: "funcionarios#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
