class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  before_action :set_family_parents, only: [:show, :edit, :update, :destroy]
  before_action :set_family_children, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @families = Family.all
    respond_with(@families)
  end

  def show
    respond_with(@family)
  end

  def new
    @family = Family.new
    @family_parents = @family.family_parents.build
    @family_children = @family.family_children.build
    respond_with(@family)
  end

  def edit
  end

  def create
    @family = Family.new(family_params)
    @family.save
    create_family_parents()
    create_family_children()
    respond_with(@family)
  end

  def update
      puts "UPDATE FAMILY CONTROLLER"
    @family.update(family_params)
    @family.save
    update_family_parents()
    update_family_children()
    respond_with(@family)
  end

  def destroy
    @family.destroy
    respond_with(@family)
  end

  private
    def set_family
      @family = Family.find(params[:id])
    end

    def set_family_parents
        @family_parents = FamilyParent.where(family_id: @family.id)
    end

    def create_family_parents
        family_parent_ids = params[ :family_parents ]
        if family_parent_ids != nil
            family_parent_ids.each do |fp|
                # make sure parent is only in one family
                FamilyParent.where(:parent_id => fp).destroy_all
                @family.family_parents.create( :parent_id => fp ) 
            end
        end
    end

    def update_family_parents
        # remove all first
        @family.family_parents.destroy_all
        # add the 
        create_family_parents()
    end

    def set_family_children
        @family_children = FamilyChild.where(family_id: @family.id)
    end

    def create_family_children
        family_child_ids = params[ :family_children ]
        if family_child_ids != nil
            family_child_ids.each do |fc|
                # make sure child is only in one family
                FamilyChild.where(:child_id => fc).destroy_all
                @family.family_children.create( :child_id => fc ) 
            end
        end
    end

    def update_family_children
        # remove all first
        @family.family_children.destroy_all
        # add the 
        create_family_children()
    end


    def family_params
      params.require(:family).permit(:familyName, :family_parents, family_parent_attributes: [ :id, :family_id, :person_id] )
    end
end
