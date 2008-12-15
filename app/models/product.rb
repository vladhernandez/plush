class Product < ActiveRecord::Base
  belongs_to :category
  has_many :images
  # acts_as_tree :order => :position

  has_permalink :title
  def to_param
    permalink
  end
  
  def image_attributes=(attrs)
    attrs.each do |attr|
      images.build(attr)
    end
  end

end
