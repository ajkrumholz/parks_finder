require 'rails_helper'

RSpec.describe Park do
  let!(:park_data) { 
    { 
      fullName: "Something", 
      description: "Something", 
      directionsInfo: "Something", 
      operatingHours: [
        {standardHours: 
          {
            monday: "10-2",
            tuesday: "10-2",
            wednesday: "10-2",
            thursday: "10-2",
            friday: "10-2",
          }
        }
    ]}}
  let!(:park) { Park.new(park_data)}

  it 'has a name' do
    expect(park.name).to be_a(String)
  end

  it 'has a description' do
    expect(park.description).to be_a(String)
  end

  it 'has direction info' do
    expect(park.directions).to be_a(String)
  end

  it 'has standard operation hours' do
    expect(park.hours).to be_a(Hash)
  end
end