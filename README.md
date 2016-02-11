#SRIguana App
###by [Reva Bhatt](https://github.com/revalidate), [Colbert Tse](https://github.com/trebloc), [Matt Seegan](https://github.com/mseegan), [Doug Tsui](https://github.com/bachtsui)
SRIguana aims to bridge the gap between financial investment and social responsibility by breaking down what industries are related to your stocks, and ultimately the mutual funds you decide to invest in. It is meant to be a one stop shop for anyone interested in learning more about mutual funds and what they're really investing in. Users will be able to see how heavily they're invested in an industry. Depending on the industry they're invested, the user can choose whether or not they'd like to buy into the mutual fund using any third preferred party. SRIguana's job is to inform the investor. Users can also build portfolios of mutual funds they're interested in.

We implemented Agile Development with pair programming to tackle different features and build a elegant app. Below is an overview of the process and the tools my group used to build a full-stack web application with Rails & PostgreSQL.
​
### Technology Used
* Ruby On Rails 
	* **bcrypt** for user authentication
	* **ffaker** 
	* **FriendlyId** to make search engine friendly URLs
	* **chartkick** to visualize data via a pie chart
* **PostgreSQL** as our backend database
* **HTML + CSS** for all our front-end engineering. Also used **SCSS** framework to design each page and **Bootstrap**
* **Data Validation** input forms require different types of data (accept dates, numbers & strings) and handle incorrect form inputs during create/update by validating data.
* **RESTful Routes** designed CRUD routes using the REST convention relevant to user experience.
* **Git + Github** version control used at every stage of project articulating progress throughout the week
* **Visual Design** wire framing & user stories were essential to keep branding consistent. 
* Heroku

![Homepage](http://i.imgur.com/cIiO0Qd.png)
![One Mutual Fund Page](http://i.imgur.com/XqkFg7g.png)
![Search Mutual Funds by Industry](http://i.imgur.com/7iISh7Z.png)

### List of API Endpoints

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

**Reva**

* MutualFunds Model
	* first class method joins the MutualFund & Stock models through the joining MutualFundStock table & returns all the mutual funds that include a stock within a given industry 
	* second class method allows user to search Mutual Fund model by industry

```
  def self.industry_in_mf(industry)
  	joins(:stocks).where(stocks: {industry: industry}).uniq
  end

  def self.search(search)
    where("industry ILIKE ?", "%#{search}%")
  end
```

**Matt**

* This adds a quantity column to the joiner table for mutual funds and stocks; a representation of the number of shares an account manager for a mutual fund would have invested in a given stock.
	* This data piece is needed in order for us to multiuply it by the price of the stock associated within a specific mutual fund so that we can calculate how much total money is invested.
	* It is deceptive in that it seems much easier to work with than it actually is.

```
class AddQuantityToMutualFundStocks < ActiveRecord::Migration
  def change
    add_column :mutual_fund_stocks, :quantity, :integer
  end
end
```

**Colbert**

* I am not a designer by any stretch of the imagination, but I was experimenting with the "Jumbotron" and wanted to add a text-overlay that was opaque in nature. I experimented with the CSS by styling the "h1 span" and then added some background coloring, letter-spacing, font-style and then a .text_overlay that included the positioning and the width. I thought it would have been great to incorporate this jumbotron and effect on the site, but it's another thing that I have in my toolbelt for the future.

![Text Overlay](http://i.imgur.com/xyPD8fu.png)


```
h1 span { 
   color: white; 
   font: bold 40px/60px; 
   letter-spacing: -1px;  
   background: rgb(0, 0, 0); /* fallback color */
   background: rgba(0, 0, 0, 0.7);
   padding: 20px; 
}
​
.text_overlay { 
   position: absolute; 
   top: 100px; 
   right: 455px; 
   width: 100%; 
}
```

**Doug**

* Validations on User Model
	* First validation is used for creating a new user
	* Second validation is used for editing an existing user
	* Needed two different validations in order to keep password validations, but allow the edit user form to be easier to use. 

```
validates :password, length: { in: 6...255},
             :on => :create
                 
validates :password, length: { in: 6...255},
             :on => :update,
             allow_blank: true
```
​
### Installation
* **Step 1**: Fork and clone this repository

* **Step 2**: In terminal type in the following commands

```
bash
bundle install
rake db:create db:migrate db:seed
rails s
```

* **Step 3**: Go to localhost:3000 in Browser

###Link to Heroku
​
This application is deployed on heroku [here](https://sriguana.herokuapp.com).

### Features to Implement

* **API Integration**
* **Social Responsibility Metrics** that tie mutual funds to social responsibility.
* **More Robust Data** Stock within a mutual fund will display the amount and percent of money invested in the mutual fund.
* **Pagination** with 1 of 20 pages showing 10 results each (can only be implemented once we have API integration with real information)
