class BulkupdatesController < ApplicationController
  def index
    @employees = Employee.includes(:department)
  end
  
  def bulk_update
    params[:employees].each do |id, attributes|
      if id.present? && attributes[:editable].present?
        @employee=find_employee(id)
        @employee.update(employee_params(attributes))
      end
    end
    redirect_to bulkupdates_path
  end
  
  private
  def find_employee(id)
    @employee = Employee.find(id)
    return(@employee)
  end

  def employee_params(attributes)
    attributes.permit(:id, :editable, :firstname, :lastname, :salary, :department_id)
  end
end
