class CreateNameTitlePeople < ActiveRecord::Migration
  def change
    create_table :name_title_people do |t|
      t.belongs_to :name_title, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
