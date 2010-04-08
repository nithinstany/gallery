# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_new_gallery_session',
  :secret      => '9c897deab517a472d392e42a6e4cf097aac2a11dfc068b5c89fc718c2435692123eeb04cf3837c7084490e69aab3723543e79360bef151b731c7132bc10b2eb1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
