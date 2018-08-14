class Commercial < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  mount_uploader :avatar, AvatarUploader
 
end
