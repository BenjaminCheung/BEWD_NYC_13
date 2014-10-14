class Apartment
  attr_accessor  :number, :renter, :rent

  def initialize apartment_number, apartment_square_feet, apartment_bedrooms, apartment_bathrooms
    @apartment_number = apartment_number
    @apartment_square_feet = apartment_square_feet
    @apartment_bedrooms = apartment_bedrooms
    @apartment_bathrooms = apartment_bathrooms
  end
end
