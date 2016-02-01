class User < ActiveRecord::Base
  has_secure_password
  include FriendlyId
  friendly_id :last_name

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end  

  validates_uniqueness_of :email
end
