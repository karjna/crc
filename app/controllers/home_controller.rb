class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def media
    @description = ButterCMS::Content.fetch([:media_page_description])
    @videos = ButterCMS::Content.fetch([:video])
    @coverage = ButterCMS::Content.fetch([:media_coverage])

    @description = @description.data.media_page_description
    @videos = @videos.data
    @coverage = @coverage.data
  end
end
