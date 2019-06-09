module UsersHelper
    def full_name
        @u.first_name + " " + @u.last_name
    end
end
