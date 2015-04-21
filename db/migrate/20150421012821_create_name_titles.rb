class CreateNameTitles < ActiveRecord::Migration
  def change
    create_table :name_titles do |t|
      t.string :title

      t.timestamps
    end
  end
end
