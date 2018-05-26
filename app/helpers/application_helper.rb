module ApplicationHelper
    def login_helper
    if current_user.is_a?(User)
         link_to "Logout", destroy_user_session_path, method: :delete
        else
            (link_to "Register Now!", new_user_registration_path) + "<br>".html_safe +
            (link_to "Login", new_user_session_path)
     end
    end
def source_helper(layout_name)
    if session[:source]
        greeting = "Thank  for visited #{session[:source]}, layout name #{layout_name}"
        content_tag(:p, greeting, class: "source-greeting")
     end
end

def copyright_generator
    PestauGem::Renderer.copyright 'Pavel Pestau', 'All right reserved'
end

end
