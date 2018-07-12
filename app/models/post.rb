class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploader :avatar, AvatarUploader

  extend FriendlyId
  friendly_id :title, use: :slugged
end
