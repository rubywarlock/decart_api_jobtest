Rails.application.routes.draw do
  resources :currencies, only: [:index, :show]

  root "currencies#index"
end
