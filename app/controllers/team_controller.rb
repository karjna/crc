class TeamController < ApplicationController
    def index
        @team = ButterCMS::Page.list('team_member')
        
    end

    def show
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('team_member', slug).data.fields
    end
end
