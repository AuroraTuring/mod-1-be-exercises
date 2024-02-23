class Attendee
  attr_reader :id, :first_name, :last_name, :zip_code

  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = zipcode
  end

end
