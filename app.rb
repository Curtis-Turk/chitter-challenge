require_relative 'lib/database_connection'
require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end
end

# We need to give the database name to the method .                                     
DatabaseConnection.connect('social_network')
# Perform a SQL query on the database and get the result set.                             
sql = 'SELECT id, title FROM albums;'           
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p record
endrequire_relative 'lib/database_connection'
require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end
end

# We need to give the database name to the method .                                     
DatabaseConnection.connect('social_network')
# Perform a SQL query on the database and get the result set.                             
sql = 'SELECT id, title FROM albums;'           
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p record
end