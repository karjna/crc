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
    @videos = ButterCMS::Content.fetch([:featured_video])
    @coverage = ButterCMS::Content.fetch([:media_coverage])

    @description = @description.data.media_page_description
    @videos = @videos.data.featured_video
    @coverage = @coverage.data
  end

  def videos
    @bodyClass = "videos"
    @videos = ButterCMS::Content.fetch([:video])

    @videos = @videos.data.video
  end
end
