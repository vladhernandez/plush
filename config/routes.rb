ActionController::Routing::Routes.draw do |map|

  # Form Resources
  map.with_options :prefix => 'orders' do |m|
   m.resources *%w( favour_tag_labels
                      save_dates
                      invites
                      occasions
                      programs
                      thank_yous
                      wedding_samples
                      other_samples
                    )
  end


  # Generic Images
  map.resources :images
  
  # Pages - Static or Dynamic
  map.resources :pages

  # map.resources :collections
  map.resources :categories, :member => {:store => :get, :custom => :get}, :has_many => :images
  map.resources :products, :collection => { :add_image => [:get, :post] }, :has_many => :images

  # Store
  map.store '/store', :controller => 'categories', :action => 'store'
  
  # Custom Invites
  map.custom '/custom', :controller => 'categories', :action => 'custom'
  
  # Do we ditch the invites controller?
  map.resources :invites, :has_many => :images
  map.custom_invites '/custom-invitations', :controller => 'invites', :action => 'index'


  # Blog Posts
  map.resources :posts, :has_many => :images, :collection => {:blog => :get, :archive => :get, :add_image => [:get, :post]}
  map.blog '/blog', :controller => 'posts', :action => 'index'
  map.blog_archive '/blog/archive', :controller => 'posts', :action => 'index', :archive => true

  # Login/Logout/Admin
  map.resources :users
  map.resource :session
  map.admin '/admin', :controller => 'admin'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'


  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "pages", :action => 'home'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect '*path', :controller => 'pages', :action => 'show'
end
