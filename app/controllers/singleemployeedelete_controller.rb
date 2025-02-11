class SingleemployeedeleteController < ApplicationController
  def index
    @employees = Employee.all()
  end

  def emp_delete
    if params[:employee_id].present?
      @employee = Employee.find(params[:employee_id])
      @employee.destroy!
    end
    redirect_to singleemployeedelete_index_path
  end
end
