class ActionRecord < ApplicationRecord
  validates :sleep, :work, :takeBreak, presence: true
  validates :recordDay, uniqueness: { scope: :user_id}
  # validates :total_hour_24
  
  belongs_to :user

  before_save do
    self.total = sleep + work + takeBreak + effort + challenge + chores
  end

  # def total_hour_24
  #   self.total = sleep + work + takeBreak + effort + challenge + chores
  #   if total != 24 
  #     errors.add(:sleep, "合計が24時間になるようにしてください")
  #   end
  # end

end
