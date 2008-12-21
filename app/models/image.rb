class Image < ActiveRecord::Base
  has_attached_file :file
  # has_attached_file :photo, :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"
  named_scope :thumb, :conditions => {:usage => 'thumb'}
  named_scope :large, :conditions => {:usage => 'large'}
  named_scope :xlarge, :conditions => {:usage => 'xlarge'}
end
