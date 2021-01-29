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

  def edit 
    @grade = Grade.find(params[:id])
  end 

  def update 
    @grade = Grade.find(params[:id])
    @grade.update(grade_params)
    redirect_to grades_path(subject_id: params[:subject_id], student_id: params[:student_id])
  end

  def index
    @grades = Grade.where(student_id: params[:student_id]).where(subject_id: params[:subject_id])
  end 

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    redirect_to grades_path(subject_id: params[:subject_id], student_id: params[:student_id])
  end

  def grade_params
    params.require(:grade).permit(:value, :weight, :comments)
  end

end