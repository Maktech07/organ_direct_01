class CreateRoomPeople < ActiveRecord::Migration
  def change
    create_table :room_people do |t|
      t.belongs_to :room, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
