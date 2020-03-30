class PagesController < ActionController::Base

    def index
        render layout: "application"
    end

    def new
        @page = Page.new
        render layout: "application"
    end

    def create
        Page.create!(page_params)
        
        redirect_to root_path
    end


    private
    def page_params
        params.require(:title).permit(:page_url, :page_id)
    end
end
