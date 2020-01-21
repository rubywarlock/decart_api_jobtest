Rails.application.routes.draw do
  mount BearerRails::Webhooks.new, at: '/currencies'

  #get "currencies",   to: "currencies#index"
  #get "currency/:id", to: "currencies#show"

  root "currencies#index"
end
