class HomeController < ApplicationController
  def index
    @bodyClass = "home"
    @featuredcases = ButterCMS::Content.fetch([:featured_cases])
    @featuredresources = ButterCMS::Content.fetch([:featured_resources])
    @bannertext = ButterCMS::Content.fetch([:homepage_headline])
    @bannerimage = ButterCMS::Content.fetch([:banner_image])
    @modalfetch = ButterCMS::Content.fetch([:homepage_modal])

    @featuredcases = @featuredcases.data.featured_cases
    @featuredresources = @featuredresources.data.featured_resources
    @bannertext = @bannertext.data.homepage_headline
    @bannerimage = @bannerimage.data.banner_image[0].banner_image
    @modal = false
    if (@modalfetch.data.homepage_modal.length > 0)
      @modalfetch.data.homepage_modal.each { |item|
        if( item.active == true)
            @modal = item
            break
        end
      }
    end
  end

  def contact
    @bodyClass = "contact full"
  end

  def donate
    @bodyClass = "donate full"
  end

  def newsletter
    @bodyClass = "newsletter"
  end

  def mission
    @bodyClass = "mission full"
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
