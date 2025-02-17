class BulkupdatesController < ApplicationController
  def index
    @employees = Employee.includes(:department)
  end

  
end
