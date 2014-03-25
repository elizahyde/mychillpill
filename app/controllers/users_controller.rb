class UsersController < ApplicationController
  load_and_authorize_resource # CanCanCan method checked current user and raises exception if not a match
  def dashboard
    # shows data for just current user
    @user = current_user
    @writings = Writing.all
    @worksheets = Worksheet.all
  end
end
