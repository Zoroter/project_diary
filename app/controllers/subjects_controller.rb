class SubjectsController < ApplicationController

  def new 
    @subject = Subject.new()
  end

  def create 
    @subject = Subject.new(subject_params)
    @subject.save
    times = subject_params[:times]
    redirect_to new_term_path(subject_id: @subject)

  end

  def index
    @subjects = Array.new(){Subject.new()}
    @subjects = current_user.student.group.subjects if is_student?
    @subjects = current_user.teacher.subjects if is_teacher?
    @subjects = Subject.all if current_user.is_admin == true
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy 
    redirect_to subjects_path
  end 

  def edit
    @subject = Subject.find(params[:id])
  end 

  def update
    @subject = Subject.find(params[:id])
    @subject.update(subject_params)
    times = subject_params[:times]
    redirect_to edit_term_path(subject_id: @subject)
  end


  def subject_params
    params.require(:subject).permit(:name, :teacher_id, :times, :group_id)
  end
    

end