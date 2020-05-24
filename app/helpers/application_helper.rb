module ApplicationHelper
    def title(text)
        content_for :title, text
    end

    def meta_tag(tag, text)
        content_for :"meta_#{tag}", text
    end

    def yield_meta_tag(tag, default_text='')
    content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
    end

    def asset_exists?(path)
        puts    path
        if Rails.configuration.assets.compile
            Rails.application.precompiled_assets.include? path
        else
            Rails.application.assets_manifest.assets[path].present?
        end
    end
end
