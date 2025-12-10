class Document < ApplicationRecord

  DOC_TYPES = ['Passport', 'ID Card', 'Driver License', 'Work Permit']

  belongs_to :employee
  validates :name, :doc_type, presence: true
   has_one_attached :image
   
end
