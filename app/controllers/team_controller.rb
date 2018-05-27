class TeamController < ApplicationController
    def index
        @sorted = ButterCMS::Content.fetch([
        :team_members
        ])
        @sorted = @sorted.data
    end

    def show
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('team_member', slug).data.fields
    end
end
