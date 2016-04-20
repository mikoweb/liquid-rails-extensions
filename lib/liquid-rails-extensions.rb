require 'liquid4-rails'
Dir[File.dirname(__FILE__) + '/liquid-rails-extensions/{filters,tags,blocks}/*.rb'].each { |f| require f }
