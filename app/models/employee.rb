class Employee < ApplicationRecord
  attr_accessor :editable

  belongs_to :country
  belongs_to :department
  has_rich_text :notes

  # It's a way to name a custom database query, composed of ActiveRecord methods.
  scope :search, ->(query) { 
  if query.present?
    left_joins(:department)
      .where("CAST(employees.id AS TEXT) LIKE ? OR firstname LIKE ? OR lastname LIKE ? OR departments.name LIKE ?", 
             "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
  else
    all
  end
}

end
