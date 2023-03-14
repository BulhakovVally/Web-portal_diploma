json.extract! photo_gallery, :id, :name, :describtion, :picture, :created_at, :updated_at
json.url photo_gallery_url(photo_gallery, format: :json)
