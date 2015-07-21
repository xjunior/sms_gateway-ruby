module SmsGateway
  DEFAULT_ENDPOINT = 'http://smsgateway.me/api/v3'

  def self.api_endpoint
    @@api_endpoint rescue DEFAULT_ENDPOINT
  end

  def self.api_endpoint=(endpoint)
    @@api_endpoint = endpoint
  end

  def self.credentials=(credentials)
    @@credentials = credentials
  end

  def self.credentials
    @@credentials rescue {}
  end
end
