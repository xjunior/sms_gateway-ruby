require 'restclient'
require 'sms_gateway/version'
require 'sms_gateway/credentials'
require 'sms_gateway/messages_resource'

module SmsGateway
  def self.messages
    MessagesResource.new(client['/messages'])
  end

  private

  def self.client
    RestClient::Resource.new(api_endpoint)
  end
end
