# Finance App
​
Finance app takes a look at what Mutual Funds are investing in and breaks down how heavy them investments are based on industry.
​
### How We Implemented Our Code
![v1 screenshot](http://imgur.com/a/atozK)
​
### User Stories
**Sprint 1: Our First Sprint**
​
​
**Sprint 2: Our Second Sprint**
​
​
**Sprint 3: Our Third Sprint**
​
### Wire Frames (Do we have any pictures?)
​
### List of API Endpoints
​
Endpoint | Method | Route | Data
--- | --- | --- | ---
*/* | GET | welcome#index | Displays splash page
*"/users"* | GET | "users#index" | Currently Does Nothing
*"/singup"* | GET | "users#new" | Takes new user to signup page
*"/users"* | POST | "users#create" | Creates new user using signup page's data 
*"/users/:id"* | GET | "users#show" | Shows a single user's page
*"/users/:id/edit"* | GET | "users#edit" | Takes logged-in user to update form for themselves
*"/users/:id"* | PATCH/PUT | "users#update" | Updates user's details from edit page's data
*"/users/:id"* | DELETE | "users#destroy" | Destroys logged-in user from the database
*"/users/mutualfunds"* | POST | "users#add_mutual_fund" | Adds a selected mutual fund to the logged-in user's profile
*"/users/mutualfunds"* | DELETE | "users#delete_mutual_fund" | Deletes a selected mutual fund to the logged-in user's profile
*"/login"* | GET | "sessions#new" | Logs in existing user
*"/logout"* | GET | "sessions#destroy" | Logs out existing user, deletes session data/cookie
*"/sessions"* | POST | "sessions#create" | Creates a new session
*"/about"* | GET | "about#index" | Display data on the team behind the app
​
### Code Snippets
​
**Reva**
​
**Matt**
​
**Colbert**
​
**Doug**
​
### Technology Used
* Ruby On Rails 
* bcrypt
* ffaker
* Friendly ID
* chartkick
* Heroku
* Git + Github
* RESTful Routes
* HTML5
* CSS
​
​
### Installation
​
Fork and Clone Repo
​
In terminal type in the following commands
​
```bash
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s
```
Go to localhost:3000 in Browser
​
### Link to Heroku
​
This application is deployed on heroku [here](https://).
​
### Features to Implement
​
​
### Contributers
[Reva Bhatt](https://github.com/revalidate)
​
[Colbert Tse](https://github.com/trebloc)
​
[Matt Seegan](https://github.com/mseegan)
​
[Doug Tsui](https://github.com/bachtsui)