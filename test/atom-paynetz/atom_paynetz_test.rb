require './test/test_helper'
 
describe 'Paynetz' do
  
  it 'should have a version' do
    Atom::Paynetz::VERSION.wont_be_nil
  end
  
  
  def test_get_token_call
    client = Atom::Paynetz::Client.new(login: '160',
                                       pass: 'Test@123',
                                       prodid: 'NSE'
                                       
                                       )
                                       
    puts client.inspect                                     
  
                                       
#    result = client.pending_orders("info@kreditmatch.dk")
#    assert_kind_of Hash, result
#    assert_kind_of Array, result["PendingOrders"]
  end
  

end