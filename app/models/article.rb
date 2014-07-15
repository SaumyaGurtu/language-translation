class Article < ActiveRecord::Base
 default_scope -> { order('created_at DESC') }
 belongs_to :language
 mount_uploader :picture, PictureUploader
end
