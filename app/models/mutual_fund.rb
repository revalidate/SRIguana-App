class MutualFund < ActiveRecord::Base
	include FriendlyId
	friendly_id :name, use: :slugged

	has_many :mutual_fund_stocks
	has_many :stocks, :through => :mutual_fund_stocks, dependent: :destroy

	has_many :user_mutual_funds
  has_many :users, :through => :user_mutual_funds

  def self.stocks_for_industry(industry)
  	joins(:stocks).where(stocks: {industry: industry}).uniq
  end

  def self.search(search)
    joins(:stocks).where("industry ILIKE ?", "%#{search}%")
  end

  #Code we got from Nathan, returns a hash showing all industries and
  #the total dollar amount invested associated with each industry
  # => {"Technology"=>"33.49", "Oil"=>"60.88"}
  def stock_dollar_amounts_by_industry
    query = %{
      SELECT industry, SUM(total_price) as total_stock_dollar_amount
        FROM (
          SELECT stocks.id, name, industry, price, stocks.price*mutual_fund_stocks.quantity as total_price
            FROM "stocks"
              INNER JOIN "mutual_fund_stocks" "mutual_fund_stocks_stocks" ON "mutual_fund_stocks_stocks"."stock_id" = "stocks"."id"
              INNER JOIN "mutual_fund_stocks" ON "stocks"."id" = "mutual_fund_stocks"."stock_id" WHERE "mutual_fund_stocks"."mutual_fund_id" = #{id}
          ) AS join_table
        GROUP BY industry;
    }

    res = ActiveRecord::Base.connection.execute(query)

    res.values.map { |industry,price| [industry, price.to_i] }.to_h
  end
end
