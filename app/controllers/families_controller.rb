class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]

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
    respond_with(@family)
  end

  def edit
  end

  def create
    @family = Family.new(family_params)
    @family.save
    respond_with(@family)
  end

  def update
    @family.update(family_params)
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

    def family_params
      params.require(:family).permit(:familyName)
    end
end
