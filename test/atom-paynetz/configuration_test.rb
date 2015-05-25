require './test/test_helper'
 
describe 'configuration' do
  
  describe '.format' do
    it 'should return default format' do
      Paynetz::Api.format.must_equal Paynetz::Api::Configuration::DEFAULT_FORMAT
    end
  end
  
  describe '.method' do
    it 'should return default http method' do
      Paynetz::Api.method.must_equal Paynetz::Api::Configuration::DEFAULT_METHOD
    end
  end
  
  after do
    Paynetz::Api.reset
  end
 
  describe '.configure' do
    Paynetz::Api::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        Paynetz::Api.configure do |config|
          config.send("#{key}=", key)
          Paynetz::Api.send(key).must_equal key
        end
      end
    end
  end
  
end