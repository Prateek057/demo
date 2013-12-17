class UsersController < ApplicationController
  def show
  	 @user = User.find(params[:id])
  	 @pins = @user.pins.page(params[:page]).per_page(5)
  end

  def destroy
  	@user = User.find(params[:id]) 
    @pin = @user.Pin.all
    @pin.destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to allusers_url }
      format.json { head :no_content }
    end
  end
end
