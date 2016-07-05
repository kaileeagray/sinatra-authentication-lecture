require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3"
  :database => "db/development.sqlite"
)
# establish connection to database

require_all 'app'
