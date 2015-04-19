class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @phone_numbers = PhoneNumber.all
    respond_with(@phone_numbers)
  end

  def show
    respond_with(@phone_number)
  end

  def new
    @phone_number = PhoneNumber.new
    respond_with(@phone_number)
  end

  def edit
  end

  def create
    @phone_number = PhoneNumber.new(phone_number_params)
    @phone_number.save
    respond_with(@phone_number)
  end

  def update
    @phone_number.update(phone_number_params)
    respond_with(@phone_number)
  end

  def destroy
    @phone_number.destroy
    respond_with(@phone_number)
  end

  private
    def set_phone_number
      @phone_number = PhoneNumber.find(params[:id])
    end

    def phone_number_params
      params.require(:phone_number).permit(:number)
    end
end
