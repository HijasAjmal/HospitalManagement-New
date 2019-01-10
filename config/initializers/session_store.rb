# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_HospitalManagemetn_session',
  :secret      => '02e8a9b509748d49f0021e66df730c280e824b219ad2506abd02548a3bc7012b14c88bfb2118481aefbd53d6ee657870be56df20ab6f6aa7b3c180f2a79c6c08'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
