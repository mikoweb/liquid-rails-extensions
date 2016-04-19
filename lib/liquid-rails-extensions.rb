require 'liquid'
Dir[File.dirname(__FILE__) + '/liquid-rails-extensions/{filters,tags}/*.rb'].each { |f| require f }
