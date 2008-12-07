class Product < ActiveRecord::Base
  belongs_to :category
  has_many :images
  acts_as_tree :order => :position

  has_permalink :name
  def to_param
    permalink
  end

end
