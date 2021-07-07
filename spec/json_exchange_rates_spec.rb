describe 'Testing the exchange rates' do

before(:all) do
  @api_key = ENV['FIXER_API_KEY']
  @exchange_rates = ParseJson.new(HTTParty::get("http://data.fixer.io/api/latest?access_key=#{@api_key}").body)
end

  it "should be a Hash" do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it "should have no empty values" do

    expect(@exchange_rates.json_file)
  end
  it "Should have a base of Euro" do
    expect(@exchange_rates.get_base).to eql 'EUR'


  end
  it "base should be a string" do
    expect(@exchange_rates.base_class_check).to eq String
  end

  it "date should be a string" do
    expect(@exchange_rates.date_class_check).to eq String
  end

  it "rates should be a Hash" do
    expect(@exchange_rates.rates_class_check).to eq Hash
  end
  it "rates should have 168 different currencys" do
    expect(@exchange_rates.rates_length_check).to eq 168
  end

  it "main hash should contain five different types of infomation" do
    expect(@exchange_rates.main_hash_length_check).to eq 5
  end

  it "should have a valid date" do
    expect(@exchange_rates.date_validation).to eq true
  end

  it "Should have currencys in uppercase" do
    expect(@exchange_rates.uppercase_currencys_check).to eq true
  end
end
