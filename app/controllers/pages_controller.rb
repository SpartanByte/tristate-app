class PagesController < ActionController::Base

    def index
        redirect_to sign_in_path
    end

end
