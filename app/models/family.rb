class Family < ActiveRecord::Base

    has_many :family_parents
    has_many :person, through: :family_parents

end
