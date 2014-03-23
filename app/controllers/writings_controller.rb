class WritingsController < ApplicationController
  def index
    @writing = Writing.new
  end
end
