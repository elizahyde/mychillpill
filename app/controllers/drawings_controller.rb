class DrawingsController < ApplicationController
  def index
    @prompts = Prompt.where(:category => "drawing")
  end
end
