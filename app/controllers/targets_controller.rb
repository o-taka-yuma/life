class TargetsController < ApplicationController

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to action_records_path
    else
      render :new
    end
  end

  def edit
    @target = Target.where(user_id: current_user.id).first

  end
  
  def update
    @target = Target.where(user_id: current_user.id).first
    if @target.update(target_params)
      redirect_to action_records_path
    end
    
  end


  private
  def target_params
    params.require(:target).permit(:life_goal, :dream, :achivement_taget).merge(user_id: current_user.id)
  end
end
