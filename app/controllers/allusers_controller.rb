class AllusersController < ApplicationController
  def show
  	@user = User.all
  end
end
