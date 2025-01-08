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

  def update
    @employee = Employee.find(params[:id])
    
    if @employee.update(employee_params)
      redirect_to employees_path()  
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete_employee
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy!
    redirect_to employees_path
  end

  def employee_params
    params.require(:employee).permit(:firstname, :lastname, :haspassport, :salary, :gender, :email, :phone, :birthdate, :hiredate, :notes)
  end
end
