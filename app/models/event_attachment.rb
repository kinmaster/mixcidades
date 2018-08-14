class EventAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :event
  belongs_to :cammercial
end
