class Category < ActiveRecord::Base
  has_many :images
  has_many :products
  
  acts_as_tree :order => :position
  
  named_scope :available, :conditions => {:parent_id => "NULL"}
    
  named_scope :store_cats, :conditions => {:category_type => 'store'}
  named_scope :store_root, :conditions => {:category_type => 'store', :parent_id => "#{Category.root.id}"}
  named_scope :custom_cats, :conditions => {:category_type => 'custom'}
  named_scope :custom_root, :conditions => {:category_type => 'custom', :parent_id => 1}
  named_scope :top_level, :conditions => {:parent_id => 'NULL'}


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
