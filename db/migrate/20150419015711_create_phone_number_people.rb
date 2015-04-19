class CreatePhoneNumberPeople < ActiveRecord::Migration
  def change
    create_table :phone_number_people do |t|
      t.belongs_to :person, index: true
      t.belongs_to :phone_number, index: true

      t.timestamps
    end
  end
end
