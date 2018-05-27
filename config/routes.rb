Rails.application.routes.draw do
  
  get 'home/index'

  root 'home#index'

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
  get '/work/:slug' => 'work#show'

  get '/team' => 'team#index'
  get '/team/:slug' => 'team#show'

  get '/board' => 'board#index'
  get '/board/:slug' => 'board#show'

  get '/jobs' => 'jobs#index'
  get '/job/:slug' => 'jobs#show'

  get '/files' => 'files#index'
  get '/file/:serial' => 'files#show'

  get '/contact' => 'home#contact'
  get '/media' => 'home#media'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
