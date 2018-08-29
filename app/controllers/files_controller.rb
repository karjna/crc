class FilesController < ApplicationController
    def index
        @bodyClass = "resources"
        @files = ButterCMS::Content.fetch([:file_topics]).data
    end

    def show
        @bodyClass = "file"
        @serial = params[:serial]
        @title = params[:title]
    end
end
