class JobsController < ApplicationController
    def index
        @bodyClass = "jobs"
        @jobs = ButterCMS::Page.list('job_listing')
        @sorted = ButterCMS::Content.fetch([
        :job_listings
        ])
        @sorted = @sorted.data
    end

    def show
        @bodyClass = "job"
        slug = params[:slug]
    
        @job = ButterCMS::Page.get('job_listing', slug).data.fields
    end
end
