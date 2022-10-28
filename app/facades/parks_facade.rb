class ParksFacade
  def self.parks(state)
    parks_hash = ParksService.parks(state)[:data]
    parks_hash.map do |park_info|
      Park.new(park_info)
    end
  end
end