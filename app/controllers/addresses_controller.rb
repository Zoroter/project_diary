class AddressesController < ApplicationController

  def edit
    @address = Address.find(params[:id])
  end 

  def update 
    @address = Address.find(params[:id])
    @address.update(address_params)
  end 


  private 

  def address_params
    params.require(:address).permit(:street, :home_number, :flat_number, :post_code, :province)
  end

end