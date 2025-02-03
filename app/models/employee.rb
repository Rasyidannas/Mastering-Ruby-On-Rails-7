class Employee < ApplicationRecord
  belongs_to :country
  belongs_to :department
  has_rich_text :notes
end
