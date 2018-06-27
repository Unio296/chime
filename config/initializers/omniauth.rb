Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, Rails.application.credentials.twitter_consumer_key, Rails.application.credentials.twitter_consumer_secret
end