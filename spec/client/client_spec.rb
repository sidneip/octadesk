require_relative '../../lib/octadesk/errors'
RSpec.describe OctadeskApi::Client do
  let!(:access_key) { '123321' } 
  let!(:client) { OctadeskApi::Client.new(access_key) }
  it "instanciate new client" do
    expect(client).to be_kind_of(OctadeskApi::Client)
  end

  it '#persons' do
    expect(client.persons).to be_kind_of(OctadeskApi::Client::PersonApi)
  end

end


RSpec.describe 'invalid client' do
  it 'without secret_key' do
    expect {
      client = OctadeskApi::Client.new()
    }.to raise_error(OctadeskApi::MissingTokenError)
  end
end
