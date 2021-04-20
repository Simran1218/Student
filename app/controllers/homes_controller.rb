class HomesController < ApplicationController
  def index
    @student_details = StudentDetail.all
  end
end
