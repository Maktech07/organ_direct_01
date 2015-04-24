class ExtensionPerson < ActiveRecord::Base
  belongs_to :extension
  belongs_to :person
end
