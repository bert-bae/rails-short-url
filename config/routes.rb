Rails.application.routes.draw do
  resources :short_urls

  get "/mini/:code", to: "mini#redirect"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
