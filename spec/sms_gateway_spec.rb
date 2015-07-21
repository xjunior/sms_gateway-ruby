require 'spec_helper'

describe SmsGateway do
  describe '.messages' do
    before { SmsGateway.api_endpoint = 'http://test.com' }
    subject { SmsGateway.messages }

    it 'is a MessageResource pointing to the messages endpoint' do
      expect(subject).to be_a SmsGateway::MessagesResource
      expect(subject.client.url).to eql 'http://test.com/messages'
    end
  end
end
