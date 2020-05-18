Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['e2f0974af3f54635e429'], ENV['0b8fe305fafd3e6725653bda2340e531fd755d9a']
end
