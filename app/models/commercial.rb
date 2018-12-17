class Commercial < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  has_many_attached :images
 
end
