class BoardController < ApplicationController
    def index
        @bodyClass = "board"
        @sorted = ButterCMS::Content.fetch([
        :sort_board_members
        ])
        
    end

    def show
        @bodyClass = "board member"
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('board_member', slug).data.fields
    end
end
