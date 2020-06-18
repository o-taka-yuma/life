class ActionRecord < ApplicationRecord
  validates :sleep, :work, :takeBreak, presence: true
  validates :total, length: {minimum: 24}, length: {maximum: 24}
  validates :recordDay, uniqueness: { scope: :user_id}
  belongs_to :user

  before_save do
    self.total = sleep + work + takeBreak + effort + challenge + chores
  end

end
