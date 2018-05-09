class BoardController < ApplicationController
    def index
        @board = ButterCMS::Page.list('board_member')
        
    end

    def show
        slug = params[:slug]
    
        @member = ButterCMS::Page.get('board_member', slug).data.fields
    end
end
