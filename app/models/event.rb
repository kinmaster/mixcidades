class Event < ApplicationRecord
    belongs_to :city
   
    
    #has_many :event_attachments, dependent: :destroy
    #accepts_nested_attributes_for :event_attachments
    has_one_attached :image
    has_many_attached :images
    extend FriendlyId
    friendly_id :title, use: :slugged
    
end
