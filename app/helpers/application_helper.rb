module ApplicationHelper
  def select_department
    Department.all
  end

  def select_country
    Country.all
  end
end
