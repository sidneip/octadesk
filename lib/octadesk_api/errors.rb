module OctadeskApi
  class OctadeskError < StandardError
  end

  class MissingTokenError < OctadeskError
    def message
      "access_token is missing, try Octadesk.access_token = xyz"
    end
  end
end
