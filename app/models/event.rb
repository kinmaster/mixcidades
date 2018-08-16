class Event < ApplicationRecord
    belongs_to :city
    mount_uploader :avatar, AvatarUploader
    
    has_many :event_attachments
    accepts_nested_attributes_for :event_attachments
    
    extend FriendlyId
    friendly_id :title, use: :slugged
    
end
