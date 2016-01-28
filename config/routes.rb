Rails.application.routes.draw do
  get 'stocks/index'

  get 'mutual_funds/index'

  get 'mutual_funds/show'

  get 'mutual_funds/new'

  get 'mutual_funds/create'

  get 'mutual_funds/edit'

  get 'mutual_funds/update'

  get 'mutual_funds/destroy'

  # root to: "/"

  # Routes for our Mutual Funds
  # get "/mutualfunds", to: "mutualfunds#index"
  # get "/mutualfunds/:id", to: "mutualfunds#show"
  # get "/mutualfunds/:id/stocks", to: "stocks#index"

  # Future Route Setup For Users
end
