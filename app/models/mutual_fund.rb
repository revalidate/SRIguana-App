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

  # def industry_
  	#how you calculate metric that actually represents percentages of industries per mutual fund
  # end

  # def last_method
  # end

  # def self.search(search)
  #   where("industry ILIKE ?", "%#{search}%")
  # end

end