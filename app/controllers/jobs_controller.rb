class JobsController < ApplicationController
    def index
        @bodyClass = "jobs"
     
        @sorted = ButterCMS::Content.fetch([
        :job_listings
        ])
        @sorted = @sorted.data
    end

    def show
        @bodyClass = "job"
        slug = params[:slug]
        
        @jobs = ButterCMS::Content.fetch([:job_listings])
        @jobs.data.job_listings.each { |item|
            if( item.slug == slug)
                @job = item
            end
        }
    end
end
