class PhotoGallery < ActiveRecord::Base

validates :name, presence: true
mount_uploaders :pictures, PictureUploader
serialize :pictures, JSON

end
