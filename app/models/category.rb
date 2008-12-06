class Category < ActiveRecord::Base
  acts_as_tree :order => :position

  has_permalink :title
  def to_param
    permalink
  end
  
  def path
    str = ''
    ancestors.reverse.each do |page|
      str << page.permalink unless page.root == page
      str << '/'
    end
    str << permalink
    str
  end
end
