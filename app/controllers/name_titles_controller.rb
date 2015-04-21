class NameTitlesController < ApplicationController
  before_action :set_name_title, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @name_titles = NameTitle.all
    respond_with(@name_titles)
  end

  def show
    respond_with(@name_title)
  end

  def new
    @name_title = NameTitle.new
    respond_with(@name_title)
  end

  def edit
  end

  def create
    @name_title = NameTitle.new(name_title_params)
    @name_title.save
    respond_with(@name_title)
  end

  def update
    @name_title.update(name_title_params)
    respond_with(@name_title)
  end

  def destroy
    @name_title.destroy
    respond_with(@name_title)
  end

  private
    def set_name_title
      @name_title = NameTitle.find(params[:id])
    end

    def name_title_params
      params.require(:name_title).permit(:title)
    end
end
