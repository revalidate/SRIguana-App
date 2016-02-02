class MutualFund < ActiveRecord::Base
	include FriendlyId
	friendly_id :name, use: :slugged

	has_many :mutual_fund_stocks
	has_many :stocks, :through => :mutual_fund_stocks, dependent: :destroy

	has_many :user_mutual_funds
  has_many :users, :through => :user_mutual_funds

  def self.search(search)
    where("name ILIKE ?", "%#{search}%") 
  end

end


