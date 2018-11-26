require 'json'
require 'date'

  class ParseJson
    attr_accessor :json_file

    def initialize(json_file)
      @json_file = JSON.parse(json_file)

    end

    def get_base
      # Return the base
      json_file['base']
    end

    def base_class_check
      json_file['base'].class
    end

    def date_class_check
      json_file['date'].class
    end

    def rates_class_check
      json_file['rates'].class
    end

    def main_hash_length_check
        json_file.length
    end

    def rates_length_check
      json_file['rates'].length
    end

    def date_validation
      y, m, d = json_file['date'].split '-'
      Date.valid_date? y.to_i, m.to_i, d.to_i
    end


    def uppercase_currencys_check
      uppercase_result = false
      true_values = 0
      json_file['rates'].keys.each do |key|
        # puts key
        if key == key.upcase
          true_values += 1
        end
        if true_values == json_file['rates'].length
          uppercase_result = true
      end
    end
      uppercase_result
    end

  end
