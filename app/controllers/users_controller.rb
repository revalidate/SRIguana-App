class UsersController < ApplicationController
  
  def new
    @user = User.new
    render :new  
  end

  def create
    @user = User.create(user_params)
    login(@user) 
    redirect_to @user   
  end

  def show
    @user = User.friendly.find(params[:id])
    render :show
  end

  def edit
    if current_user == set_user
      render :edit
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.friendly.find(params[:id])
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


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def set_user
    user_id = params[:id] || current_user.id
    @user = User.find_by_id(user_id)
  end

end
