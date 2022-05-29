require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY'],
      use_iam_profile:       false,
      host:                  's3.example.com',
      endpoint:              'https://s3.example.com:8080'
    }
    config.fog_directory  = ENV['S3_BUCKET_NAME']
    config.fog_public     = false
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end
end
