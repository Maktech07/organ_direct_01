class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :set_name_title_person, only: [:show, :edit, :update, :destroy]
  before_action :set_address_person, only: [:show, :edit, :update, :destroy]
  before_action :set_email_person, only: [:show, :edit, :update, :destroy]
  before_action :set_phone_number_person, only: [:show, :edit, :update, :destroy]
  before_action :set_extension_person, only: [:show, :edit, :update, :destroy]
  before_action :set_room_person, only: [:show, :edit, :update, :destroy]
  before_action :set_department_person, only: [:show, :edit, :update, :destroy]
  before_action :set_position_person, only: [:show, :edit, :update, :destroy]
  before_action :set_gender_person, only: [:show, :edit, :update, :destroy]
  before_action :set_person_roles, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show

  end

  # GET /people/new
  def new
    puts "NEW PEOPLE CALLED"
    @person = Person.new
    @person_role_types = @person.person_role_types.build
    @address_person = @person.build_address_person
    @phone_number_person = @person.build_phone_number_person
    @email_person = @person.build_email_person
    @name_title_person = @person.build_name_title_person
    @extension_person = @person.build_extension_person
    @room_person = @person.build_room_person
    @department_person = @person.build_department_person
    @position_person = @person.build_position_person
    @gender_person = @person.build_gender_person
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    puts "CREATE PEOPLE CALLED"
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save

        role_ids = params[ :person_role_types ]
        role_ids.each do |rid|
            @person.person_role_types.create( :role_type_id => rid ) 
        end

        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    def set_address_person
        @address_person = AddressPerson.find_or_create_by(person_id: @person.id)
    end

    def set_name_title_person
        @name_title_person = NameTitlePerson.find_or_create_by(person_id: @person.id)
    end

    def set_extension_person
        @extension_person = ExtensionPerson.find_or_create_by(person_id: @person.id)
    end

    def set_phone_number_person
        @phone_number_person = PhoneNumberPerson.find_or_create_by(person_id: @person.id)
    end

    def set_email_person
        @email_person = EmailPerson.find_or_create_by(person_id: @person.id)
    end

    def set_room_person
        @room_person = RoomPerson.find_or_create_by(person_id: @person.id)
    end

    def set_department_person
        @department_person = DepartmentPerson.find_or_create_by(person_id: @person.id)
    end

    def set_position_person
        @position_person = PositionPerson.find_or_create_by(person_id: @person.id)
    end

    def set_gender_person
        @gender_person = GenderPerson.find_or_create_by(person_id: @person.id)
    end

    def set_person_roles
        @person_role_types = PersonRoleType.where(person_id: @person.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
        # THIS IS HUGELY IMPORTANT!!! - THE ROLE_TYPE_IDS below was not being handled correctly
            # WRONG - SINGULAR HANDLING
        # params.require(:person).permit(:firstName, :lastName, :role_type_ids  )
            # RIGHT - PLURAL HANDLING
      params.require(:person).permit(:firstName, :lastName ,address_person_attributes: [:id, :person_id, :address_id] ,phone_number_person_attributes: [:id, :person_id, :phone_number_id] ,email_person_attributes: [:id, :person_id, :email_id] ,name_title_person_attributes: [:id, :person_id, :name_title_id], extension_person_attributes: [:id, :person_id, :extension_id] , room_person_attributes: [:id, :person_id, :room_id], department_person_attributes: [:id, :person_id, :department_id], gender_person_attributes: [:id, :person_id, :gender_id] , gender_person_attributes: [:id, :person_id, :gender_id], position_person_attributes: [:id, :person_id, :position_id], role_types: []) 
    end

    def person_role_type_params
        params.require(:person_role_types)
    end
   
  
end
