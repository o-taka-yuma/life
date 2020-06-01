class Target < ApplicationRecord

  def new
    @target = Target.where(user_id: current_user.id)
  end




  def create
    
  end


end
