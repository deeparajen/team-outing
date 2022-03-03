class BlindDatesController < ApplicationController

  def index
    @blind_dates = BlindDate.all
  end

  def create
    @blind_date = BlindDate.find params[:id]
    @blind_date.interested_employees.create(employee_id: params[:employee_id])
  end


  private

  def blind_dates_params
    params.require(:blind_dates).permit(
      :outing_date, :description
    )
  end
end
