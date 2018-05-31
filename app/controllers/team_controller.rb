class TeamController < ApplicationController
    def index
        @bodyClass = "team"
        @sorted = ButterCMS::Content.fetch([
        :team_members
        ])
        @sorted = @sorted.data
    end

    def show
        @bodyClass = "team member"
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('team_member', slug).data.fields
    end
end
