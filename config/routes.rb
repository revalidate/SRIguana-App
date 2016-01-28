Rails.application.routes.draw do
  root to: "/"

  # Routes for our Mutual Funds
  get "/mutualfunds", to: "mutualfunds#index"
  get "/mutualfunds/:id", to: "mutualfunds#show"
  get "/mutualfunds/:id/stocks", to: "stocks#index"

  # Future Route Setup For Users
end
