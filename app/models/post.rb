class Post < ActiveRecord::Base
    has_many :images
    has_permalink :title
    named_scope :current, :limit => 5
    def to_param
      permalink
    end
    
    def formatted_date
      "#{date.month}.#{date.day}.#{date.year}"
    end
    
    def image_attributes=(attrs)
      attrs.each do |attr|
        images.build(attr)
      end
    end
    
end
