module SmsGateway
  class MessagesResource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def send(args)
      params = SmsGateway.credentials.merge(args)
      JSON.parse client['/send'].post(params)
    end
  end
end
