class UsersController < ApplicationController
  def dashboard
    # shows data for current user
    @user = current_user
    @writings = Writing.all
  end
end
