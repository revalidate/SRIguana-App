class UsersController < ApplicationController
  before_action :logged_in?, only: [:show, :edit, :update]

  def index
  end

  def new
    @user = User.new
    @title = "Sign Up"
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end

  end

  def show
    @user = User.friendly.find(params[:id])
    @title = "Welcome, #{@user.first_name} #{@user.last_name} "
    @mutualfunds = @user.mutual_funds
  end

  def edit
    @title = "Edit Profile"
    if current_user == set_user
      render :edit
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = "Successfully Updated Profile"
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.friendly.find(params[:id])
    if current_user == @user
      @user.destroy
      flash[:notice] = "Successfully deleted user #{@user.last_name}"
      redirect_to root_path
    else
      flash[:notice] = "You can't delete that user."
      redirect_to user_path(@user)
    end
  end

  def add_mutual_fund
    user = current_user
    mutual_fund = MutualFund.friendly.find(params[:user][:mutual_fund_id])

    if user.mutual_funds.include?(mutual_fund)
      flash[:notice] = "You already have this mutual fund in your portfolio"
    else
      user.mutual_funds << mutual_fund
      flash[:notice] = "You have successfully added a portfolio"
    end
    redirect_to mutual_fund_path(mutual_fund)
  end

  def delete_mutual_fund
    user = current_user
    mutual_fund = MutualFund.friendly.find(params[:user][:mutual_fund_id])
    user.mutual_funds.delete(mutual_fund)
    flash[:notice] = "You have successfully deleted your portfolio"
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def set_user
    user_id = params[:id] || current_user.id
    @user = User.friendly.find(user_id)
  end

end
