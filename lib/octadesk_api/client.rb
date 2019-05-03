require 'octadesk_api/client/person_api'
require 'octadesk_api/client/organization_api'
require 'octadesk_api/errors'
module OctadeskApi
  class Client
    include HTTParty
    base_uri "https://api.octadesk.services"
    def initialize access_token = nil
      @access_token = access_token || OctadeskApi.access_key || ENV['OCTADESK_ACCESS_TOKEN']
      raise OctadeskApi::MissingTokenError unless @access_token
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}", 'Content-Type' => 'application/json' } )
    end

    def perform_request(path)
      response = self.class.get(path)
      response
    end

    def persons
      @person_client ||= PersonApi.new(self)
    end

    def organizations
      @organizations_client ||= OrganizationApi.new(self)
    end
    
    def get(path, options  = {})
      self.class.get(path, options)
    end

    def post(path, options = {})
      self.class.post(path, body: options.to_json, headers: default_headers)
    end

    def put(path, options = {})
      self.class.put(path, body: options.to_json, headers: default_headers)
    end

    private
    def default_headers
      { 'Content-Type' => 'application/json' }
    end
  end
end
