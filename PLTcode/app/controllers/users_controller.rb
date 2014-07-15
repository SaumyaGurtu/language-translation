class UsersController < ApplicationController
 def new
  @user = User.new
 end

 def index
  @users = User.all
 end

 def create
  @user = User.new(user_params)
 
  if @user.save
   redirect_to @user
  else
   render 'new'
  end
 end

 def edit
  @user = User.find(params[:id])
 end

 def destroy
  @user = User.find(params[:id])
  @user.destroy
 
  redirect_to users_path
 end

 def show
  @user = User.find(params[:id])
 end

 def update
  @user = User.find(params[:id])
 
  if @user.update(user_params)
    redirect_to @user
  else
    render 'edit'
  end
 end
 
 def approve
  @user = User.find(params[:id])
  @user.update_attribute(:login_approval, 'Yes')

#  redirect_to users_path
  redirect_to @user
 end
 
 def refuse
  @user = User.find(params[:id])
  @user.update_attribute(:login_approval, 'Not Yet')

  redirect_to users_path
#  redirect_to @user
 end
 
 private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :location, :contact, :gender, :role, :login_approval)
  end

end
