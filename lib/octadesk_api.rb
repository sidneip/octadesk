require "httparty"
require "octadesk_api/version"
require "octadesk_api/client"
require "octadesk_api/configuration"
require 'active_support/core_ext/module/delegation'

module OctadeskApi
  class << self
    delegate :env, :env=, :access_key, :access_key=, to: :configuration
    def production?
      ENV['RAILS_ENV'] == 'production' || self.env == 'production'
    end
    
    def configuration
      @configuration ||= Configuration.new
    end
  end
  class Error < StandardError; end
  # Your code goes here...
end
