class UsersController < ApplicationController


  def edit 
    @user = User.find(params[:id])
    @adress = Address.where(user: @user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end



  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :sname, :is_man, :surname, :pin, :birth_date)
  end

  def address_params
    params.require(:address).permit(:street, :home_number, :flat_number, :post_code, :province)
  end

  
end