module CurrentUserConcern
    def current_user
        super || guest_user
    end

    def guest_user
        guest = GuestUser.new
        guest.first_name_here = "Guest User First name"
        guest.email = "guest@example.com"
        guest
    end
end

