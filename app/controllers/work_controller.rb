class WorkController < ApplicationController
    def index
        @work = ButterCMS::Page.list('recent_work')      
    end

    def show
        slug = params[:slug]
    
        @work = ButterCMS::Page.get('recent_work', slug).data.fields
    end
end
