class Goal < ActiveRecord::Base
  attr_accessible :due_date, :name, :user_id

  belongs_to :user
  has_many :tasks

end
