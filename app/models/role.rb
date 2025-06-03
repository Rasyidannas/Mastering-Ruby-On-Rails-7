class Role < ApplicationRecord
  has_many :admins
  validates :name, presence: true, uniqueness: true
end
