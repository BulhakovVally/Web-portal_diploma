class VideoGallery < ActiveRecord::Base
    attr_accessor 'videos_file_name'
    has_attached_file :attachment,
         :processors => lambda { |a| a.is_video? ? [ :ffmpeg ] : [ :thumbnail ] }
        validates_attachment_content_type :attachment, content_type: /\Avideo\/.*\Z/ 
    #mount_uploader :videos, VideoUploader 
end