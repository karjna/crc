class BoardController < ApplicationController
    def index
        @sorted = ButterCMS::Content.fetch([
        :sort_board_members
        ])
        
    end

    def show
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('board_member', slug).data.fields
    end
end
