class Image < ActiveRecord::Base
  has_attached_file :file
  # has_attached_file :photo, :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"
end
