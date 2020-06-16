class ActionRecordsController < ApplicationController
    
  def index
    @record = ActionRecord.where(user_id: current_user.id)
    @sleepAverage = @record.average(:sleep)
    @workAverage = @record.average(:work)
    @effortAverage = @record.average(:effort)
    @takeBreakAverage = @record.average(:takeBreak)
    @challengeAverage = @record.average(:challenge)
    @choresAverage = @record.average(:chores)
  end

  def new
    @record = ActionRecord.new
  end

  def create
    ActionRecord.create(record_params)
  end



  private
  def record_params
    params.require(:action_record).permit(:recordDay, :sleep, :work, :effort, :takeBreak, :challenge, :chores).merge(user_id: current_user.id)
  end

end
