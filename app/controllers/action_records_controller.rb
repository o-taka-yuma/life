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

  def show
    @record = ActionRecord.find(params[:id])
  end

  def new
    @record = ActionRecord.new
  end

  def create
    @record = ActionRecord.new(record_params)
    if @record.save
      redirect_to action_records_path
    else
      render :new
    end
  end



  private
  def record_params
    params.require(:action_record).permit(:recordDay, :sleep, :work, :effort, :takeBreak, :challenge, :chores, :total, :comment).merge(user_id: current_user.id)
  end

end
