require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapater => "sqlite3"
  :database => "db/development.sqlite"
)
# establish connection to database

require_all 'app'
