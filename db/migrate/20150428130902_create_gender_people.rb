class CreateGenderPeople < ActiveRecord::Migration
  def change
    create_table :gender_people do |t|
      t.belongs_to :gender, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
