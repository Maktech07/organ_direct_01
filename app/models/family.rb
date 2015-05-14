class Family < ActiveRecord::Base
    has_many :family_parents
    has_many :parents, through: :family_parents
    accepts_nested_attributes_for :family_parents

    has_many :family_children
    has_many :children, through: :family_children
    accepts_nested_attributes_for :family_children
end
