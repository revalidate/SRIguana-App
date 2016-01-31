class UsersController < ApplicationController
  def new
    @user = User.new
    render :new  
  end

  def create
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to @user # <-- go to show    
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
