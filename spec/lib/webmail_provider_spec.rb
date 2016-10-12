require 'webmail_provider'

describe WebmailProvider do
  describe '::list' do
    it 'maps each domain to a WebmailProvider with name and url' do
      WebmailProvider.list.each do |domain, provider|
        expect(domain).to be_a String
        expect(provider.name).to be_a String
        expect(provider.name.length).to be_positive
        expect(provider.url).to be_a URI::HTTPS
      end
    end
  end

  describe '::for_email_address' do
    it 'returns a WebmailProvider for known email addresses' do
      expect(WebmailProvider.for('foobar@gmail.com'))
        .to be_a WebmailProvider
    end

    it 'ignores whitespace' do
      expect(WebmailProvider.for('  foobar@gmail.com  '))
        .to be_a WebmailProvider
    end

    it 'returns nil for unknown email addresses' do
      expect(WebmailProvider.for('foobar@YXYXY.com'))
        .to be_nil
    end

    it 'returns nil for empty string' do
      expect(WebmailProvider.for('')).to be_nil
    end

    it 'returns nil for nil' do
      expect(WebmailProvider.for(nil)).to be_nil
    end
  end

  describe '#url' do
    let(:gmail) { WebmailProvider.for('foobar@gmail.com') }

    it 'returns a URI::HTTPS' do
      expect(gmail.url).to be_a URI::HTTPS
    end

    it 'is the login url of the provider' do
      expect(gmail.url.to_s).to eq 'https://mail.google.com'
    end
  end
end
