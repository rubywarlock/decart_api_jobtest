Rails.application.routes.draw do
  get "currencies",   to: "currencies#index"
  get "currency/:id", to: "currencies#show"

  root "currencies#index"
end
