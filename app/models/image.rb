class Image < ActiveRecord::Base
  has_attached_file :file, :styles => {:full => '800x600', :large => "300x400>", :medium => "300x300>", :thumb => "100x100>" }
end
