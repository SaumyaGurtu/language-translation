class Article < ActiveRecord::Base
 mount_uploader :picture, PictureUploader
end
