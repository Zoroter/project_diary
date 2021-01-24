class TutorsController < ApplicationController

  def new
    @user = User.new()
    @address = Address.new()
    @tutor = Tutor.new()
  end

  def create
    @user = User.new(user_params)
    @address = Address.new(address_params)
    @tutor = Tutor.new()
    @user.save
    @address.user = @user
    @address.save
    @tutor.user = @user 
    @tutor.save
    session[:user_id] = @user.user_id
    redirect_to main_path
  end



  private


  def user_params
    params.require(:user).permit(:email, :password, :name, :sname, :is_man, :surname, :pin, :birth_date)
  end

  def address_params
    params.require(:address).permit(:street, :home_number, :flat_number, :post_code, :province)
  end

end