class EmployeesController < ApplicationController
  def index
    @employees=Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end
end
