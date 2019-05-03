module OctadeskApi
  class Client
    module Persons
      def persons(email)
        response = self.class.get('/persons', { email: email })
        response.parsed_response
      end

      def persons_filter(options = {})
        response = self.class.post('/persons/filter', options)
        response.parsed_response
      end
    end
  end
end
