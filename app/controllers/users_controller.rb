class UsersController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def destroy
  	@user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
