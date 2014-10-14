class Building
  attr_accessor :apartments
  def initialize building_name, building_address
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def view_apartments
    apartments.each do |apartment|
      puts "Number: #{apartment.number}"
      puts "Rent: #{apartment.rent}"
      puts "Renter: #{apartment.renter}"
  end


end
