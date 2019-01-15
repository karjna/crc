Rails.application.routes.draw do

  get 'home/index'

  root :to => 'home#index'

  scope :module => 'buttercms' do
    get '/categories/:slug' => 'categories#show', :as => :buttercms_category
    get '/author/:slug' => 'authors#show', :as => :buttercms_author

    get '/blog/rss' => 'feeds#rss', :format => 'rss', :as => :buttercms_blog_rss
    get '/blog/atom' => 'feeds#atom', :format => 'atom', :as => :buttercms_blog_atom
    get '/blog/sitemap.xml' => 'feeds#sitemap', :format => 'xml', :as => :buttercms_blog_sitemap

    get '/blog(/page/:page)' => 'posts#index', :defaults => {:page => 1}, :as => :buttercms_blog
    get '/blog/:slug' => 'posts#show', :as => :buttercms_post
  end

  get '/work' => 'work#index'
  get '/work/docket' => 'work#docket'
  get '/work/:slug' => 'work#show'
  get '/work/*topic/:slug' => 'work#detail'


  get '/team/staff' => 'team#index'
  get '/team/staff/:slug' => 'team#show'

  get '/team/fellows' => 'team#fellows'
  get '/team/fellows/gallery' => 'team#gallery'
  get '/team/fellows/:slug' => 'team#show'

  get '/team/board' => 'board#index'
  get '/team/board/:slug' => 'board#show'

  get '/jobs' => 'jobs#index'
  get '/jobs/:slug' => 'jobs#show'

  get '/resources' => 'files#index'
  get '/resources/:serial' => 'files#show'

  get '/contact' => 'home#contact'
  get '/media/videos' => 'home#videos'
  get '/media/coverage' => 'home#coverage'
  get '/media' => 'home#media'
  get '/donate' => 'home#donate'
  get '/mission' => 'home#mission'
  get '/newsletter' => 'home#newsletter'
  get '/thank-you' => 'home#thank_you'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
