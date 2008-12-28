class Post < ActiveRecord::Base
    has_many :images
    has_permalink :title
    named_scope :current, :limit => 5
    def to_param
      permalink
    end
end
