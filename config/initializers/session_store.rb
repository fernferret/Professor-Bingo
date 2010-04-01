# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Bingo_session',
  :secret      => '4c50f035f6b93287986f1a5c72ed3f4effb83533b75fb2ddc157c5e3572a14cc0f2107379eee1ec13dc5c949cb924168e7b4c36ba5a6ffcc0b6955521621646d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
