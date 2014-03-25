class DrawingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @prompts = Prompt.where(:category => "drawing")
  end
end
