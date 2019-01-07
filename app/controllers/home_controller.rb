class HomeController < ApplicationController
  def index
    @bodyClass = "home"
    @featured = ButterCMS::Content.fetch([:featured_cases])
    @bannertext = ButterCMS::Content.fetch([:homepage_headline])
    @bannerimage = ButterCMS::Content.fetch([:banner_image])

    @featured = @featured.data.featured_cases
    @bannertext = @bannertext.data.homepage_headline
    @bannerimage = @bannerimage.data.banner_image[0].banner_image

  end

  def contact
    @bodyClass = "contact"
  end

  def donate
    @bodyClass = "donate"
  end

  def newsletter
    @bodyClass = "newsletter"
  end

  def thank_you
    @bodyClass = "thank"
  end

  def media
    @bodyClass = "media_page"
    @description = ButterCMS::Content.fetch([:media_page_description])
    @videos = ButterCMS::Content.fetch([:featured_video])
    @coverage = ButterCMS::Content.fetch([:featured_media_coverage])

    @description = @description.data.media_page_description
    @videos = @videos.data.featured_video
    @coverage = @coverage.data.featured_media_coverage
  end

  def videos
    @bodyClass = "videos"
    @videos = ButterCMS::Content.fetch([:video])

    @videos = @videos.data.video
  end

  def coverage
    @bodyClass = "coverage"
    @coverage = ButterCMS::Content.fetch([:media_coverage])

    @coverage = @coverage.data
  end
end
