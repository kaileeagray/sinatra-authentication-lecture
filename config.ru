# this is the most important file
# rackup config.ru to start application
# this file defines the stack of my web app that will start a server
# the server will respond to requests against app built

require_relative './config/environment'

# mount the controller
if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run 'rake db:migrate' to resolve the issue.'
end

use Rack::MethodOverride
run ApplicationController
