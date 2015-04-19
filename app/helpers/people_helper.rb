module PeopleHelper

    def my_address_id
        if @person.address?
           nil 
        else
            @person.address.id
        end
    end

end
