module OctadeskApi
  class Client
    class PersonApi
      attr_accessor :client
      def initialize(client)
        self.client = client
      end

      def find(id) 
        response = client.get("/persons/#{id}")
        response.parsed_response
      end

      def find_by_email(email)
        response = client.get("/persons/#{id}")
        response.parsed_response
      end

      def where(options = {})
        response = client.post("/persons/filter", options)
        response.parsed_response
      end
    end
  end

end
