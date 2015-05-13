class StudentClassesController < ApplicationController
  before_action :set_student_class, only: [:show, :edit, :update, :destroy]
  before_action :set_class_members, only: [:show, :edit, :update, :destroy]

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
    @class_members = @student_class.class_members.build

    respond_with(@student_class)
  end

  def edit
  end

  def create
    @student_class = StudentClass.new(student_class_params)
    @student_class.save

    create_class_members()
    
    respond_with(@student_class)
  end

  def update
    @student_class.update(student_class_params)

    update_class_members()

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

    def set_class_members
        @class_members = ClassMember.where(student_class_id: @student_class.id)
    end

    def student_class_params
      params.require(:student_class).permit(:grade_level_teacher_id, class_members: [] ) 
    end

    def create_class_members
        class_member_ids = params[ :class_members ]
        if class_member_ids != nil
            class_member_ids.each do |cmi|
                # make sure student is only in one class
                ClassMember.where(:student_id => cmi).destroy_all
                @student_class.class_members.create( :student_id => cmi ) 
            end
        end
    end

    def update_class_members
        # remove all first
        @student_class.class_members.destroy_all
        # add the 
        create_class_members()
    end

end
