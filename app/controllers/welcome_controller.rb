class WelcomeController < ApplicationController

  def index
    @grade = Grade.find(2)
  end

end