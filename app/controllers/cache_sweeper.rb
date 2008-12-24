class CacheSweeper < ActionController::Caching::Sweeper
  observe Product, Category # This sweeper is going to keep an eye on the Product, Category

    def after_create(object)
        expire_cache_for(object)
    end

    def after_update(object)
        expire_cache_for(object)
    end

    # If our sweeper detects that a Post was deleted call this
    def after_destroy(object)
        expire_cache_for(object)
    end

    private
    def expire_cache_for(object)
      # Also expire the show page, incase we just edited a blog entry
      expire_page(:controller => object.class.downcase, :action => 'show', :id => object.id)
    end

end