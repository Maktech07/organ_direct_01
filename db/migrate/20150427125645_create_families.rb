class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :familyName

      t.timestamps
    end
  end
end
