require 'httparty'
#allows for http request to be made in ruby code
require 'dotenv'
#environment file to hide API key
require 'json'
require_relative '../json_path'
require_relative '../json_class_walkthrough'
require_relative '../json_weather'

Dotenv.load('.env')
RSpec.configure do |config|
  config.formatter = :documentation
end
