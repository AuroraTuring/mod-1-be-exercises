class Attendee
  attr_reader :id, :first_name, :last_name, :zip_code

  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = zipcode
    @zipcode = @zipcode.rjust(5, "0")
    @zipcode = @zipcode.length > 5 ? @zipcode[0..4] : @zipcode
    @name = first_name + " " + last_name
  end

end
