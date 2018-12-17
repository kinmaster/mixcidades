class Contest < ApplicationRecord
  belongs_to :user
  belongs_to :city
 

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_one_attached :image
end
