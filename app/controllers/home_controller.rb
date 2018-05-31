class HomeController < ApplicationController
  def index
    @bodyClass = "home"
  end

  def contact
    @bodyClass = "contact"
  end

  def media
    @bodyClass = "media"
    @description = ButterCMS::Content.fetch([:media_page_description])
    @videos = ButterCMS::Content.fetch([:video])
    @coverage = ButterCMS::Content.fetch([:media_coverage])

    @description = @description.data.media_page_description
    @videos = @videos.data
    @coverage = @coverage.data
  end
end
