if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AKIAJXSZJZBTX27GL3EQ'],
        :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['lokobon']
  end
end