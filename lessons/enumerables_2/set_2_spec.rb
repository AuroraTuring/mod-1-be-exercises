# Finish writing the test to make the assertion pass.
# Use the sort and sort_by methods.

describe "#sort/#sort_by" do
  it "sorts the numbers" do
    numbers = [8, 23, 7, 29, 9, 10]
    sorted_numbers = numbers.sort

    expect(sorted_numbers).to eq([7, 8, 9, 10, 23, 29])
  end

  it "sorts the names alphabetically" do
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]
    sorted_names = names.sort

    expect(sorted_names).to eq(["Donatello", "Leonardo", "Michaelangelo", "Raphael"])
  end

  it "sorts the names by name length" do
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]

    sorted_names = names.sort_by do |name|
      name.length
    end
    expect(sorted_names).to eq(["Raphael", "Leonardo", "Donatello", "Michaelangelo", ])
  end

  it "sorts the names by corresponding value" do
    # This one is spicy! You might need to use multiple enumerables and
    # do it in multiple steps.
    people = [
        ["Sofie", 4],
        ["Scarlett", 9],
        ["Stella", 8]
      ]

    sorted_names = people.sort_by do |person|
      person.last
    end
    name_value = sorted_names.map do |element|
      element.first
    end
    expect(name_value).to eq(["Sofie", "Stella", "Scarlett"])
  end
end
