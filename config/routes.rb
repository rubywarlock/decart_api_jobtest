Rails.application.routes.draw do
  mount BearerRails::Webhooks.new, at: '/currencies/:id'
  get "currencies", to: "currencies#index"
  #resources :currencies, only: [:index, :show]

  root "currencies#index"
end
