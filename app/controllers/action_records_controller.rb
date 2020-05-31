class ActionRecordsController < ApplicationController
    
  def index
    @record = ActionRecord.all
  end

  def new
    @record = ActionRecord.new
  end

  def create
    ActionRecord.create(record_params)
    redirect_to action_records_path
  end



  private
  def record_params
    params.require(:action_record).permit(:recordDay, :sleep, :work, :effort, :takeBreak, :challenge, :chores).merge(user_id: current_user.id)
  end

end
