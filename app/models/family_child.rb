class FamilyChild < ActiveRecord::Base
  belongs_to :family
  belongs_to :child, :class_name => "Person", :foreign_key => "child_id"
end
