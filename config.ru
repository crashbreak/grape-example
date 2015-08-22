Bundler.require(:default, ENV['RACK_ENV'] || :development)
require File.expand_path('../api', __FILE__)

use Crashbreak::ExceptionCatcherMiddleware
run API
