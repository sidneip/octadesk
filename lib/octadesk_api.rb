require "httparty"
require "octadesk_api/version"
require "octadesk_api/client"

module OctadeskApi
  class << self
    attr_accessor :access_key
  end
  class Error < StandardError; end
  # Your code goes here...
end
