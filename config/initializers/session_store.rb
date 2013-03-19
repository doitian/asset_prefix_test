# Be sure to restart your server when you modify this file.

require 'my_cookie_store'

SessionTest::Application.config.session_store :my_cookie_store, key: '_session_test_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# SessionTest::Application.config.session_store :active_record_store
