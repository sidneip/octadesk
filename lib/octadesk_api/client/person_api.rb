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
        response = client.get("/persons/", {query: {email: email} })
        response.parsed_response
      end

      def where(options = {})
        response = client.post("/persons/filter", options)
        response.parsed_response
      end

      def create(options = {})
        response = client.post("/persons", options)
        response.parsed_response
      end

      def update(id, options = {})
        response = client.put("/persons/#{id}", options)
        response.parsed_response
      end
    end
  end

end
