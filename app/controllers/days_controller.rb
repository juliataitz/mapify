class DaysController < ApplicationController

  def create
    @day = Day.new(day_params)
    respond_to do |format|
      if @day.save
        format.html { redirect_to root_url, notice: 'Day was successfully created.' }
        format.json { render json: @day}
      else
        format.html { render action: 'new' }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end 

  private

  def day_params
    params.require(:day).permit(:date)
  end 

end