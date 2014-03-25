class UsersController < ApplicationController
  load_and_authorize_resource
  def dashboard
    # shows data for current user
    @user = current_user
    @writings = Writing.all
    @worksheets = Worksheet.all
  end
end
