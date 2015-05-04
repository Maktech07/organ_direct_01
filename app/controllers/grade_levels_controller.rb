class GradeLevelsController < ApplicationController
  before_action :set_grade_level, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @grade_levels = GradeLevel.all
    respond_with(@grade_levels)
  end

  def show
    respond_with(@grade_level)
  end

  def new
    @grade_level = GradeLevel.new
    @grade_level_teachers = @grade_level.grade_level_teachers.build    
    respond_with(@grade_level)
  end

  def edit
      if @grade_level_teachers == nil
        @grade_level_teachers = @grade_level.grade_level_teachers.build
      end
  end

  def create
    @grade_level = GradeLevel.new(grade_level_params)
    @grade_level.save
    respond_with(@grade_level)
  end

  def update
    @grade_level.update(grade_level_params)
    respond_with(@grade_level)
  end

  def destroy
    @grade_level.destroy
    respond_with(@grade_level)
  end

  private
    def set_grade_level
      @grade_level = GradeLevel.find(params[:id])
    end

    def grade_level_params
      params.require(:grade_level).permit(:number, :name, :grade_level, teacher_ids: [], grade_level_teacher_attributes: [:id, :grade_level_id, :teacher_id])
    end
end
