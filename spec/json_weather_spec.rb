describe 'Testing the weather data' do
  before(:all) do
    @weather_data_inst = WeatherJson.new('weather_data.json')
  end
  after(:all) do
    puts 'Weather Test Complete'
  end
  it "Coord should be the contain two pieces of information" do
    expect(@weather_data_inst.json_file['coord'].length).to eq 2
  end

  it "the weathers main, icon and description should be a string" do
    expect(@weather_data_inst.json_file['weather'][0]['main']).to be_kind_of(String)
    expect(@weather_data_inst.json_file['weather'][0]['description']).to be_kind_of(String)

    expect(@weather_data_inst.json_file['weather'][0]['icon']).to be_kind_of(String)
  end

  it "all IDs should be a Integer" do
    expect(@weather_data_inst.json_file['weather'][0]['id']).to be_kind_of(Integer)
  end
  it "base should contain stations" do

  end

  it "base main contain only integers " do

  end
end
