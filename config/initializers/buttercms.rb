require 'buttercms-ruby'

# If you added the Heroku Butter add-on, ENV["BUTTER_TOKEN"] will be defined.
# Otherwise, grab your token at https://buttercms.com/profile/ and set it below
ButterCMS::api_token = '010622b166047c5b6e80d41c9daa451c0903a8bc'

# Test mode can be used to setup a staging website for previewing content or for testing content during local development.
# ButterCMS::test_mode = true