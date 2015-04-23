class Address < ActiveRecord::Base

    def fullInfo
        self.streetInfo + ' ' + self.city
    end
end
