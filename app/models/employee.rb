class Employee < ApplicationRecord

  has_many :documents 
  validates :name, :role, presence: true
  validates :salary, presence: true, numericality: { greater_than: 0 }
end
