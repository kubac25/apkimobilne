class SessionsController < ApplicationController
  def new
  end

    def create
      student = Student.find_by(index: params[:session][:index])
      if student && student.authenticate(params[:session][:password])
        # Wszystko dobrze, logujemy
        log_in student
        redirect_to student
      else
        # Niedobrze
        render 'new'
      end
    end
end
