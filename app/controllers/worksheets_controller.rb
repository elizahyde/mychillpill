class WorksheetsController < ApplicationController
  before_action :authenticate_user!
  def index
      @worksheet = Worksheet.new
  end

  def create
    @worksheet = Worksheet.new(worksheet_params)
    @worksheet.user = current_user

    respond_to do |format|
      if @worksheet.save
        @worksheets = Worksheet.all

        format.html { redirect_to(:worksheets, :notice => 'Worksheet was successfully Saved.') }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @worksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def worksheet_params
    # This allows content and question to be saved to worksheet (rails 4 change)
    params.require(:worksheet).permit(:name, :date, :text_answer1, :text_answer2, :text_answer3,
      :text_answer4, :text_answer5, :text_answer6, :text_answer7, :user_id)
  end
end
