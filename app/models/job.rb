class Job < ApplicationRecord
  belongs_to :user
  belongs_to :sector
  belongs_to :capacity
  belongs_to :salary
end
