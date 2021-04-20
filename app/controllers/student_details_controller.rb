class StudentDetailsController < ApplicationController
  before_action :fetch_id, only: [:edit, :destroy, :show, :update]

  def index
    @student_details = StudentDetail.all
  end

  def new
    @student_detail = StudentDetail.new
  end

  def create
    @student_detail = StudentDetail.new(student_details_params)
    if @student_detail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student_detail.update(student_details_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @student_detail.destroy
      redirect_to root_path
    else
      flash[:alert] = 'error while deleting student_details'
    end
  end

  def fetch_id
    @student_detail = StudentDetail.find(params[:id])
  end

  private

  def student_details_params
    params.require(:student_detail).permit(:student_name, :gender, :roll_no, :address, :university_name)
  end 
end
