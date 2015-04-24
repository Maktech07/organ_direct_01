class CreateExtensionPeople < ActiveRecord::Migration
  def change
    create_table :extension_people do |t|
      t.belongs_to :extension, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
