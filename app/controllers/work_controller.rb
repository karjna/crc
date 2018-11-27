class WorkController < ApplicationController
    def index
        @bodyClass = "topics"
        @work = ButterCMS::Content.fetch([:work_topic])
        @work = @work.data
        @seo = ButterCMS::Content.fetch([:our_work_seo_description])
        @statesRaw = ButterCMS::Content.fetch([:states])

        @states = []
        @statesRaw.data.states.each { |state|

            @states.push(state.abreviation)
        }
    end

    def show
        @bodyClass = "topic"
        slug = params[:slug]

        @cases = []
        @work = ButterCMS::Content.fetch([:work_topic])

        @work.data.work_topic.each { |item|
            if (item.url_slug == slug)
                @work = item
                @cases.push(item.cases)
            end
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
        @seo = ButterCMS::Content.fetch([:docket_seo_description])

        @states = @states.data.states
        @docket = @docket.data.docket
    end
end
