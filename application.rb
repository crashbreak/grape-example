Bundler.require(:default, ENV['RACK_ENV'] || :development)

require './api'
require './crashbreak'