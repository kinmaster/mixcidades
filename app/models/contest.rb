class Contest < ApplicationRecord
  belongs_to :user
  belongs_to :city
  mount_uploader :avatar, AvatarUploader

  extend FriendlyId
  friendly_id :title, use: :slugged
end
