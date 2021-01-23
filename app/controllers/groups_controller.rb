class GroupsController < ApplicationController

  def new 
    @group = Group.new()
  end

  def create 

    @group = Group.new(group_params)
    @group.tutor = Tutor.find(params[:group][:tutor])
    byebug
    @group.save 
    
  end

  def group_params
    params.require(:group).permit(:name, student_ids: [])
  end

end