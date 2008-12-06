class Product < ActiveRecord::Base
  acts_as_tree :order => :position

  has_permalink :title
  def to_param
    permalink
  end
  
end
