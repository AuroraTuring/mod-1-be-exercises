require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo1 = Ceo.new(15, 20, "George", "CBA321")
    end
    it "has base_salary and bonus attributes" do
      ceo1 = Ceo.new(15,20, "George", "CBA321")
      expect(ceo1.name).to eq("George")
      expect(ceo1.id).to eq("CBA321")
      expect(ceo1.base_salary).to eq(15)
      expect(ceo1.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
    it "has attributes" do
      ceo2 = Ceo.new(20, 25, "Bob", "ABC123")
      expect(ceo2.name).to eq("Bob")
      expect(ceo2.id).to eq("ABC123")
      expect(ceo2.base_salary).to eq(20)
      expect(ceo2.bonus).to eq(25)
      expect(ceo2.total_compensation).to eq(45)
    end

  end

end
