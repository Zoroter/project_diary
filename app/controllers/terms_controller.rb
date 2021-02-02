class TermsController < ApplicationController

  def new
    @subject = Subject.find(params[:subject_id])
    @times = @subject.times.to_i
    @terms = Array.new(@times){Term.new}
  end 

  def create 
    i = 0
    max = params[:terms].length
    while i < max
      term = Term.new(terms_params(i))
      term.subject_id = params[:format] 
      term.save
      i = i+1 
    end
    redirect_to subjects_path
  end

  def edit
    @subject = Subject.find(params[:subject_id])
    @times = @subject.times.to_i
    @terms = Term.where(subject_id: @subject.subject_id)[0, @times]
  end 

  def update 
    @subject = Subject.find(params[:subject_id])
    i = 0
    max = @subject.terms.length
    while i < max
      term = Term.where(subject_id: @subject.subject_id)[i]
      term.update(terms_params(i))
      i = i+1 
    end
    Term.where(subject_id: @subject.subject_id)[@times, -1].destroy
  end

  def terms_params(i)
    params.require(:terms)[i].permit(:day, :hour)
  end


  
end