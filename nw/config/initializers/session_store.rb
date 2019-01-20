# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nw_session',
  :secret      => 'd4487db2cf6b0b9c835b1edb05058122fe961bc56a8a7824bb99fd60768b500b674f4b9c3d9f300266abfc85de7ced7f9841ccab6f672eb3d03e57dd59761d4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
