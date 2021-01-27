class GradesController < ApplicationController

  def new
    @grade = Grade.new()
  end 

  def create 
    @grade = Grade.new(grade_params)
    @grade.student_id = params[:student_id]
    @grade.subject_id = params[:subject_id]
    @grade.teacher_id = current_user.teacher.teacher_id
    @grade.save
    redirect_to subject_path(params[:subject_id])
  end

  def show 

  end

  def index

  end 

  def destroy

  end

  def grade_params
    params.require(:grade).permit(:value, :weight, :comments)
  end

end