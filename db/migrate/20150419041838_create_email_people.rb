class CreateEmailPeople < ActiveRecord::Migration
  def change
    create_table :email_people do |t|
      t.belongs_to :person, index: true
      t.belongs_to :email, index: true

      t.timestamps
    end
  end
end
