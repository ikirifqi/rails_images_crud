require 'file_size_validator'

class Image < ActiveRecord::Base
  mount_uploader :data, ImageUploader

  validates :title, :description, :data, :presence => true
  validates :data, :file_size => { :maximum => 200.kilobytes.to_i }
end
