class CreateAddressPeople < ActiveRecord::Migration
  def change
    create_table :address_people do |t|
      t.belongs_to :person, index: true
      t.belongs_to :address, index: true

      t.timestamps
    end
  end
end
