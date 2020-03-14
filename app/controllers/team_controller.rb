class TeamController < ApplicationController
    def index
        @bodyClass = "team"
        @sorted = ButterCMS::Content.fetch([:team_members])
        @sorted = @sorted.data
    end

    def fellows
        @bodyClass = "fellows"
        @sorted = ButterCMS::Content.fetch([:fellows])
        @sorted = @sorted.data
    end

    def show
        @bodyClass = "team member"
        slug = params[:slug]

        @member = ButterCMS::Page.get('team_member', slug).data.fields
    end

    def gallery
        @bodyClass = "gallery"
        @sorted_gallery = ButterCMS::Content.fetch([:gallery])
        @gallery = @sorted_gallery.data

        @sorted_poems = ButterCMS::Content.fetch([:poems])
        @poems = @sorted_poems.data
    end

    def poem
        @bodyClass = "poem"
        slug = params[:slug]
        
        @poems = ButterCMS::Content.fetch([:poems])
        @poems.data.poems.each { |item|
            if( item.slug == slug)
                @poem = item
            end
        }
    end
end
