Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Setting.twitter_key.first.setting, Setting.twitter_secret.first.setting
  provider :facebook, Setting.facebook_key.first.setting, Setting.facebook_secret.first.setting  
  provider :github, Setting.github_key.first.setting, Setting.github_secret.first.setting    
end
