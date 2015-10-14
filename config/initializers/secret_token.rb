# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SamleApp::Application.config.secret_key_base = 'a5c7537795847e753d3e65c793a6d5e8e91fe43aad35f5f977e127471c340391e3350a563f86b8a1a1b5d5cf35a80945dd3f3aa927345a7c79d8f9146f1bd21a'

require 'securerandom'

def secure_token
 token_file = Rails.root.join('.secret')
 if File.exist?(token_file)
  # Use the existing token.
  File.read(token_file).chomp
 else
  # Generate a new token and store it in token_file.
  token = SecureRandom.hex(64)
  File.write(token_file, token)
  token
 end
end

SamleApp::Application.config.secret_key_base = secure_token
