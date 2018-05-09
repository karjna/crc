class FilesController < ApplicationController
    def index
        @files = ButterCMS::Content.fetch([:files]).data
    end

    def show
        @serial = params[:serial]
        @title = params[:title]
    end
end
