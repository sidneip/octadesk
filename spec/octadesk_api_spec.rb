RSpec.describe OctadeskApi do
  let(:access_key) { '123321' } 
  it "has a version number" do
    expect(OctadeskApi::VERSION).not_to be nil
  end

  it "set api key" do
    OctadeskApi.access_key = access_key
    expect(OctadeskApi.access_key).to eq(access_key)
  end
end
