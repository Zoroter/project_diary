class UsersController < ApplicationController


  def edit
    @user = User.find(params[:id])
    @adress = Address.where(user: @user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def show 
    @user = User.find(params[:id])
  end
  
  def index 
    if User.search(params[:search])
      @users = User.search(params[:search])
    else 
      @users = User.all 
    end
  end 

  def destroy
    @user = User.find(params[:id])
    session[:user_id] = nil if @user == current_user
    @user.destroy
    redirect_to root_path
  end 

 

  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :sname, :is_man, :surname, :pin, :birth_date)
  end

  def address_params
    params.require(:address).permit(:street, :home_number, :flat_number, :post_code, :province)
  end

  
end