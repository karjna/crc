class WorkController < ApplicationController
    def index
        @bodyClass = "topics"
        @work = ButterCMS::Content.fetch([:work_topic])
        @work = @work.data      
    end

    def show
        @bodyClass = "topic"
        slug = params[:slug]  
           
        @stopgap = []
        @cases = []    
        @work = ButterCMS::Content.fetch([:work_topic])
        @recent = ButterCMS::Page.list('recent_work')

        @work.data.work_topic.each { |item| 
            if (item.url_slug == slug)
                @work = item
                @cases.push(item.cases)
            end
        }

        @cases[0].each { |item| 
            @recent.each { |all| 
            if (item.slug == all.data.slug)
                @stopgap.push(all)
            end
         }
        }

        @cases = @cases[0]
        @cases = @cases.sort_by { |k| k["slug"] }
    end

    def detail
        @bodyClass = "work"
        slug = params[:slug] 
        @parent = params[:topic]
        @work = ButterCMS::Page.get('recent_work', slug).data.fields
    end

    def docket
        @bodyClass = "docket"
        @states = ButterCMS::Content.fetch([:states])
        @docket = ButterCMS::Content.fetch([:docket])

        @states = @states.data.states
        @docket = @docket.data.docket
    end
end
