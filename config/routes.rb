Rails.application.routes.draw do
  root to: "welcome#index"

  # Routes for our Mutual Funds
  get "/mutualfunds", to: "mutual_funds#index"
  get "/mutualfunds/:id", to: "mutual_funds#show"
  get "/mutualfunds/:id/stocks", to: "stocks#index"

  # Future Route Setup For Users
end
