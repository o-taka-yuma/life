class ActionRecord < ApplicationRecord
  validates :sleep, :work, :takeBreak, presence: true
  validates :recordDay, uniqueness: { scope: :user_id}
  
  belongs_to :user

  before_save do
    self.total = sleep + work + takeBreak + effort + challenge + chores
  end


end
