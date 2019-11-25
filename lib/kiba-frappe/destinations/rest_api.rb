require 'httparty'

module Kiba
  module Frappe
    module Destinations
      class RestApi
        attr_reader :doctype, :base_uri, :api_key, :api_secret
        
        def initialize(doctype:, base_uri:, api_key:, api_secret:)
          @doctype = doctype
          @base_uri = base_uri
          @api_key = api_key
          @api_secret = api_secret
        end
        
        def write(row)
          puts "writing #{row}"

          response = HTTParty.post(api_url("/api/resource/#{@doctype}"),
            headers: {
              "Content-Type" => "application/json; charset=utf-8",
              "Authorization" => "token #{@api_key}:#{@api_secret}",
              "Accept" => "application/json"
            },

            body: row.to_json
          )

          puts response.body, response.code
        end
        
        private

        def api_url(path)
          URI.join(@base_uri, URI.encode(path))
        end
      end
    end
  end
end
