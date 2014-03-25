class WritingsController < ApplicationController
  def index
    @writing = Writing.new
    @prompts = Prompt.where(:category => "writing")
  end

  def create
    @writing = Writing.new(writing_params)
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

  def show
    @writing = Writing.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @writing }
    end
  end

  def writing_params
    # This allows content and question to be saved to writing (rails 4 change)
    params.require(:writing).permit(:content, :question, :user_id)
  end
end