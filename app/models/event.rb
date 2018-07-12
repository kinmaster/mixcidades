class Event < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    has_many :event_attachments
    accepts_nested_attributes_for :event_attachments
end
