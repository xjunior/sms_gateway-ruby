$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'sms_gateway'

RSpec.configure do |c|
  c.around(:each) do |example|
    endpoint = SmsGateway.api_endpoint
    example.run
    SmsGateway.api_endpoint = endpoint
  end
end
