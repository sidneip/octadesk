require 'octadesk_api/client/persons'
require 'octadesk_api/client/person_api'
require 'octadesk_api/errors'
module OctadeskApi
  class Client
    include HTTParty
    include OctadeskApi::Client::Persons
    base_uri "https://api.octadesk.services"
    def initialize access_token = nil
      @access_token = access_token || OctadeskApi.access_key || ENV['OCTADESK_ACCESS_TOKEN']
      raise OctadeskApi::MissingTokenError unless @access_token
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}"} )
    end

    def perform_request(path)
      response = self.class.get(path)
      response
    end

    def persons
      @person_client ||= PersonApi.new(self)
    end
    
    def get(path, options  = {})
      self.class.get(path, options)
    end

    def post(path, options = {})
      self.class.post(path, options)
    end
  end
end
