module CurrentUserConcern
    def current_user
        super || guest_user
    end

    def guest_user
        OpenStruct.new( first_name_here: "Guest",
                        email: "maga@go.ru"
                        )
    end
end

