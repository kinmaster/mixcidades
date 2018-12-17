class Classifield < ApplicationRecord
  belongs_to :user
  belongs_to :city
  

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many_attached :images
end
