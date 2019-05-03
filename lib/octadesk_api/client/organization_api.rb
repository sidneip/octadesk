
module OctadeskApi
  class Client
    class OrganizationApi
      attr_accessor :client
      def initialize(client)
        self.client = client
      end

      def find(id) 
        response = client.get("/organizations/#{id}")
        response.parsed_response
      end

      def where(options = {})
        response = client.get("/organizations", options)
        response.parsed_response
      end

      def create(options = {})
        response = client.post("/organizations", options)
        response.parsed_response
      end

      def update(id, options = {})
        response = client.put("/organizations/#{id}", options)
        response.parsed_response
      end
    end
  end

end
