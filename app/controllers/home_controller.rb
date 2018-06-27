class HomeController < ApplicationController
  def index
    @bodyClass = "home"
    @featured = ButterCMS::Content.fetch([
        :featured_cases
        ])
    @featured = @featured.data.featured_cases
  end

  def contact
    @bodyClass = "contact"
  end

  def donate
    @bodyClass = "donate"
  end

  def media
    @bodyClass = "media_page"
    @description = ButterCMS::Content.fetch([:media_page_description])
    @videos = ButterCMS::Content.fetch([:video])
    @coverage = ButterCMS::Content.fetch([:media_coverage])

    @description = @description.data.media_page_description
    @videos = @videos.data
    @coverage = @coverage.data
  end
end
