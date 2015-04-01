class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :streetInfo
      t.text :additional1
      t.text :additional2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
