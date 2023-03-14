# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   config.root = Rails.root.join('tmp') # adding these...
#   config.cache_dir = 'carrierwave' # ...two lines
#   if Rails.env.production?
#     config.storage :fog
#     config.fog_provider = 'fog/aws'
#     config.fog_credentials = {
#       :provider               => 'AWS',                        # required
#       :aws_access_key_id      => 'AKIAJHYGBZLBMIGVH7VA',                        # required
#       :aws_secret_access_key  => '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',  # required
#       :region                 => 'eu-west-1'',                  # optional, defaults to 'us-east-1'
#       :host                   => 's3.example.com',             # optional, defaults to nil
#       :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil

#     }
#     config.fog_directory  = 'dnepraf'                             # required
#     config.fog_public     = false                                   # optional, defaults to true
#     config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
#   else
#     config.storage :file
#     config.enable_processing = false if Rails.env.test?
#   end
# end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJHYGBZLBMIGVH7VA',                      # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'dnepraf'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end