class Attendee
  attr_reader :id, :first_name, :last_name, :zipcode, :name

  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = zipcode || "00000"
    @zipcode = @zipcode.rjust(5, "0")
    @zipcode = @zipcode.length > 5 ? @zipcode[0..4] : @zipcode
    @name = first_name + " " + last_name
  end

  def display
    "#{@id}: #{@name}, #{@zipcode}"
  end

end
