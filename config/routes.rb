Rails.application.routes.draw do
  root to: "welcome#index"

  # Routes for our Mutual Funds
  get "/mutualfunds", to: "mutual_funds#index"
  get "/mutualfunds/:id", to: "mutual_funds#show", as: "mutual_fund" 
  get "/mutualfunds/:id/stocks", to: "stocks#index"

  # Future Route Setup For Users
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
end
