module OctadeskApi
  class Configuration
    attr_accessor :access_key, :env
    def initialize
      @access_key = nil
      @env = nil
    end
    
  end
end