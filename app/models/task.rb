class Task < ActiveRecord::Base
  validates :body, presence: true
  before_save :set_priority

  def set_priority
    task_count = Task.count
    self.priority = task_count + 1
  end
end
