require 'sms_gateway'

describe SmsGateway::MessagesResource do
  let(:client) { double('sms gateway client') }
  subject { SmsGateway::MessagesResource.new(client) }

  describe '.send' do
    let(:send_resource) { double }
    before do
      SmsGateway.credentials = {email: 'me@myself.com', password: '123hard456', device: 123456}
      allow(client).to receive(:[]).with('/send').and_return(send_resource)
    end

    it 'POSTs a message to /send on the client resource with the credentials' do
      message = {email: 'me@myself.com', password: '123hard456', device: 123456, message: 'lol', number: '123'}

      expect(send_resource).to receive(:post).with(message).and_return('{"success":true}')

      subject.send(message: 'lol', number: '123')
    end

    it 'allows to override the credentials' do
      message = {email: 'me@myself.com', password: '123hard456', device: 98765, message: 'lol', number: '123'}

      expect(send_resource).to receive(:post).with(message).and_return('{"success":true}')

      subject.send(message: 'lol', number: '123', device: 98765)
    end

    it 'parses the returned JSON' do
      expect(send_resource).to receive(:post).and_return('{"success":true}')

      expect(subject.send({})).to eql({'success' => true})
    end
  end
end
