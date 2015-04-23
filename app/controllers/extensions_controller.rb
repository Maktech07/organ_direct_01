class ExtensionsController < ApplicationController
  before_action :set_extension, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @extensions = Extension.all
    respond_with(@extensions)
  end

  def show
    respond_with(@extension)
  end

  def new
    @extension = Extension.new
    respond_with(@extension)
  end

  def edit
  end

  def create
    @extension = Extension.new(extension_params)
    @extension.save
    respond_with(@extension)
  end

  def update
    @extension.update(extension_params)
    respond_with(@extension)
  end

  def destroy
    @extension.destroy
    respond_with(@extension)
  end

  private
    def set_extension
      @extension = Extension.find(params[:id])
    end

    def extension_params
      params.require(:extension).permit(:ext)
    end
end
