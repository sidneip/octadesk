require "httparty"
require "octadesk_api/version"
require "octadesk_api/client"

module OctadeskApi
  class << self
    attr_accessor :access_key, :env
    def production?
      ENV['RAILS_ENV'] == 'production' || self.env == 'production'
    end
  end
  class Error < StandardError; end
  # Your code goes here...
end
