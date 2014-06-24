class Article < ActiveRecord::Base
 belongs_to :language
 mount_uploader :picture, PictureUploader
end
