require 'carrierwave/orm/activerecord'

class Article < ActiveRecord::Base

 mount_uploader :poster, PictureUploader
 
 has_many :comments, dependent: :destroy
 validates :title, presence: true, length: { minimum: 5 }

end
