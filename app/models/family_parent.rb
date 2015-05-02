class FamilyParent < ActiveRecord::Base
  belongs_to :family
  belongs_to :parent, :class_name => "Person", :foreign_key => "parent_id"
end
