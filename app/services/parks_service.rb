class ParksService
  def self.parks(state)
    response = Faraday.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}&api_key=#{ENV['parks_key']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end