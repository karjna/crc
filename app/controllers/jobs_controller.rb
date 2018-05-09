class JobsController < ApplicationController
    def index
        @jobs = ButterCMS::Page.list('job_listing')
        
    end

    def show
        slug = params[:slug]
    
        @job = ButterCMS::Page.get('job_listing', slug).data.fields
    end
end
