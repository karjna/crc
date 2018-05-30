class WorkController < ApplicationController
    def index
        @work = ButterCMS::Content.fetch([
        :work_topic
        ])
        @work = @work.data      
    end

    def show
        slug = params[:slug]  
           
        @cases = []    
        @work = ButterCMS::Content.fetch([:work_topic])

        @work.data.work_topic.each { |item| 
            if (item.url_slug == slug)
                @work = item
                @cases.push(item.cases)
            end
        }
    end

    def detail
        slug = params[:slug] 
        @parent = params[:topic]
        @work = ButterCMS::Page.get('recent_work', slug).data.fields
    end
end
