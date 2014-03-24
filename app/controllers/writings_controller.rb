class WritingsController < ApplicationController
  def index
    @writing = Writing.new
    @prompts = Prompt.where(:category => "writing")
  end

  def create
    @writing = Writing.new(writing_params)
    # binding.pry

    respond_to do |format|
      if @writing.save
        # binding.pry
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
    params.require(:writing).permit(:content, :question)
  end
end