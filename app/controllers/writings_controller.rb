class WritingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @writing = Writing.new
    @prompts = Prompt.where(:category => "writing")
  end

  def create
    @writing = Writing.new(writing_params)
    # sets user to be current user. Protects it so a user can't make a post under a different user
    @writing.user = current_user

    respond_to do |format|
      if @writing.save
        @writings = Writing.all

        format.html { redirect_to(:writings, :notice => 'Writing was successfully Saved.') }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @writing.errors, status: :unprocessable_entity }
      end
    end
  end

  def writing_params
    # This allows content and question to be saved to writing (rails 4 change)
    params.require(:writing).permit(:content, :question, :user_id)
  end
end