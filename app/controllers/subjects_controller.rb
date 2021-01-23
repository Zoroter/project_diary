class SubjectsController < ApplicationController

  def new 
    @subject = Subject.new()
  end

  def create 
    @subject = Subject.new(subject_params)
    @subject.save
    times = subject_params[:times]
    redirect_to new_term_path(subject_params)
  end

  
  def subject_params
    params.require(:subject).permit(:name, :teacher_id, :times)
  end
    

end