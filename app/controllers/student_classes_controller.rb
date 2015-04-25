class StudentClassesController < ApplicationController
  before_action :set_student_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_classes = StudentClass.all
    respond_with(@student_classes)
  end

  def show
    respond_with(@student_class)
  end

  def new
    @student_class = StudentClass.new
    respond_with(@student_class)
  end

  def edit
  end

  def create
    @student_class = StudentClass.new(student_class_params)
    @student_class.save
    respond_with(@student_class)
  end

  def update
    @student_class.update(student_class_params)
    respond_with(@student_class)
  end

  def destroy
    @student_class.destroy
    respond_with(@student_class)
  end

  private
    def set_student_class
      @student_class = StudentClass.find(params[:id])
    end

    def student_class_params
      params.require(:student_class).permit(:grade_level_teacher_id)
    end
end
