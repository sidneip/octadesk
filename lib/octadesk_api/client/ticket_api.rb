module OctadeskApi
  class Client
    class TicketApi
      attr_accessor :client
      def initialize(client)
        self.client = client
      end

      def find(id) 
        response = client.get("/tickets/#{id}")
        response.parsed_response
      end

      def where(options = {})
        response = client.post("/tickets", options)
        response.parsed_response
      end

      def create(options = {})
        response = client.post("/tickets", options)
        response.parsed_response
      end

      def update(id, options = {})
        response = client.put("/tickets/#{id}", options)
        response.parsed_response
      end
    end
  end

end
