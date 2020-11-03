# Deliberately named _specs.rb to avoid being loaded except when specified

RSpec.describe "Specs mutating the global state" do
  10.times do |i|
    it("passes #{i}") {  true  }
  end
end
