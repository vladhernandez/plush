class Post < ActiveRecord::Base
    has_many :images
    has_permalink :title
    def to_param
      permalink
    end
end
