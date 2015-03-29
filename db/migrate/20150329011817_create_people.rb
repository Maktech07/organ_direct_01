class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :firstName
      t.text :lastName

      t.timestamps
    end
  end
end
