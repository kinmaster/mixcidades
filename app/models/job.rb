class Job < ApplicationRecord
  belongs_to :user
  belongs_to :sector
  belongs_to :capacity
end
