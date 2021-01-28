class FinalGradesController < ApplicationController

  def new 
    @final_grade = FinalGrade.new()
  end 

  def create 
    @final_grade = FinalGrade.new(f_params)
    @final_grade.student_id = params[:student_id]
    @final_grade.subject_id = params[:subject_id]
    @final_grade.teacher_id = current_user.teacher.teacher_id
    @final_grade.save
    redirect_to subject_path(params[:subject_id])
  end

  def f_params
    params.require(:final_grade).permit(:value)
  end
end