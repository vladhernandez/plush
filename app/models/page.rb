class Page < ActiveRecord::Base
  has_permalink :title
  acts_as_tree :order => :position
end
