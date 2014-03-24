class WritingsController < ApplicationController
  def index
    @writing = Writing.new
    @prompts = Prompt.where(:category => "writing")
  end
end