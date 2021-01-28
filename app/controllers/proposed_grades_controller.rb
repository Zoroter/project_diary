class ProposedGradesController < ApplicationController

  def new
   @proposed_grade = ProposedGrade.new()
  end 

  def create 
    @proposed_grade = ProposedGrade.new(p_params)
    @proposed_grade.student_id = params[:student_id]
    @proposed_grade.subject_id = params[:subject_id]
    @proposed_grade.teacher_id = current_user.teacher.teacher_id
    @proposed_grade.save
    redirect_to subject_path(params[:subject_id])
  end

  def p_params
    params.require(:proposed_grade).permit(:value)
  end

end