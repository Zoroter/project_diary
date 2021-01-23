class TermsController < ApplicationController

  def new
    @times = params[:times].to_i
    @subject = Subject.find(params[:teacher_id])
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
  end

  def terms_params(i)
    params.require(:terms)[i].permit(:day, :hour)
  end


  
end