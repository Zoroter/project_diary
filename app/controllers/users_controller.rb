class UsersController < ApplicationController


  def new
    @user = User.new()
    @address = Address.new()
    @student = Student.new()
  end

  def create
    @user = User.new(user_params)
    @address = Address.new(address_params)
    @user.save
    @address.user = @user
    @address.save
    @student.user = @user
  end



  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :sname, :is_man, :surname, :pin, :birth_date)
  end

  def address_params
    params.require(:address).permit(:street, :home_number, :flat_number, :post_code, :province)
  end

  
end