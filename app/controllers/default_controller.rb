class DefaultController < ApplicationController
  def index
    @users = User.where(:outstanding => true).limit(3)
  end
end