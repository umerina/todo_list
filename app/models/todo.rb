class Todo < ApplicationRecord
  validates :task, :limit_date, presence: true
end
