class CreatePositionPeople < ActiveRecord::Migration
  def change
    create_table :position_people do |t|
      t.belongs_to :position, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
