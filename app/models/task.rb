class Task < ActiveRecord::Base
  attr_accessible :due_date, :goal_id, :name, :status

  belongs_to :goals
end
