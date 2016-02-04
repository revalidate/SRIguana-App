class MutualFund < ActiveRecord::Base
	include FriendlyId
	friendly_id :name, use: :slugged

	has_many :mutual_fund_stocks
	has_many :stocks, :through => :mutual_fund_stocks, dependent: :destroy

	has_many :user_mutual_funds
  has_many :users, :through => :user_mutual_funds

  def self.industry_in_mf(industry)
  	#returns all the mutual funds that include a stock within a given industry
  	joins(:stocks).where(stocks: {industry: industry}).uniq
  end

  def self.search(search)
    where("industry ILIKE ?", "%#{search}%")
  end

  #returns a hash
  # => {"Technology"=>"33.49", "Vidya"=>"60.88"}
  def stock_dollar_amounts_by_industry
    query = %{
      SELECT industry, SUM(total_price) as total_stock_dollar_amount
        FROM (
          SELECT stocks.id, name, industry, price, stocks.price*mutual_fund_stocks.quantity as total_price
            FROM "stocks"
              INNER JOIN "mutual_fund_stocks" "mutual_fund_stocks_stocks" ON "mutual_fund_stocks_stocks"."stock_id" = "stocks"."id"
              INNER JOIN "mutual_fund_stocks" ON "stocks"."id" = "mutual_fund_stocks"."stock_id" WHERE "mutual_fund_stocks"."mutual_fund_id" = $1
          ) AS join_table
        GROUP BY industry;
    }

    rails_env = ENV["RAILS_ENV"] || "development"
    dbname = "fin_app_#{rails_env}"

    @conn ||= PG.connect(dbname: dbname)
    res = @conn.query(query, [id])
    res.values.to_h
  end
  
  # def industry_
  	#how you calculate metric that actually represents percentages of industries per mutual fund
  # end

  # def last_method
  # end

  # def self.search(search)
  #   where("industry ILIKE ?", "%#{search}%")
  # end

end