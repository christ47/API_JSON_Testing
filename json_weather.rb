require 'json'
require 'date'

  class WeatherJson
    attr_accessor :json_file

    def initialize(json_file)
      @json_file = JSON.parse(File.read(json_file))
    end

  
  end
