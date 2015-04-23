class NameTitlePerson < ActiveRecord::Base
  belongs_to :name_title
  belongs_to :person
end
