class FilesController < ApplicationController
    def index
        @bodyClass = "files"
        @files = ButterCMS::Content.fetch([:files]).data
        @show_private = params[:private]
    end

    def show
        @bodyClass = "file"
        @serial = params[:serial]
        @title = params[:title]
    end
end
