class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index
  load_and_authorize_resource # CanCanCan method checked current user and raises exception if not a match

  def dashboard
    # shows data for just current user
    @user = current_user
    @writings = Writing.all
    @worksheets = Worksheet.all
  end

  def index
  end

end