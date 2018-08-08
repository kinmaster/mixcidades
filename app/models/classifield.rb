class Classifield < ApplicationRecord
  belongs_to :user
  belongs_to :city
  mount_uploader :avatar, AvatarUploader
end
