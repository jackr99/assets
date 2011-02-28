# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_assets_session',
  :secret      => '657e3ecba1bf5fbedf7227ad7e9a92e1ed183c1511e2c103a358160c72584d1cd42ca0c172e0aceb0ea800ced94167e57c3de281567a332bd378ba415568aef8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
