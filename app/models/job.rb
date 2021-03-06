class Job < ApplicationRecord
  belongs_to :user
  belongs_to :sector
  belongs_to :capacity
  belongs_to :salary
  belongs_to :city

  extend FriendlyId
  friendly_id :title, use: :slugged
end
