# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fabwiki_session',
  :secret      => '75a648b9d3d94016fac187bc9fc3ca8f212b06a628a6c21f52c33e861781c442c35d3f77387a0b3539c3d966477ebfbeab2051c1a8207240068767ff922de237'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
