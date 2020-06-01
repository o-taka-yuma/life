class ActionRecord < ApplicationRecord

  validates :sleep, :work, :takeBreak, presence: true

  belongs_to :user
end
