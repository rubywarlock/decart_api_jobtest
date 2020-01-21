Rails.application.routes.draw do
  mount BearerRails::Webhooks.new, at: '/currencies'
  mount BearerRails::Webhooks.new, at: '/currency/:id'
  mount BearerRails::Webhooks.new, at: '/'

  #get "currencies",   to: "currencies#index"
  #get "currency/:id", to: "currencies#show"

  root "currencies#index"
end
