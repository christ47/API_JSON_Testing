describe 'Testing the exchange rates' do

before(:all) do
  @exchange_rates = ParseJson.new('json_exchange_rates.json')
end

  it "should be a Hash" do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it "should have no empty values" do
    # pending
    expect(@exchange_rates.json_file)
  end
  it "Should have a base of Euro" do
    expect(@exchange_rates.get_base).to eql 'EUR'

    # expect(@exchange_rates.json_file.first.last).to eql 'EUR'
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
  it "rates should have 31 different currencys" do
    expect(@exchange_rates.rates_length_check).to eq 31
  end

  it "main hash should contain three different types of infomation" do
    expect(@exchange_rates.main_hash_length_check).to eq 3
  end

  it "should have a valid date" do
    expect(@exchange_rates.date_validation).to eq true
  end

  it "Should have currencys in uppercase" do
    expect(@exchange_rates.uppercase_currencys_check).to eq true
  end
end
