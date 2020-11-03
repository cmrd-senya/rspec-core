# Deliberately named _specs.rb to avoid being loaded except when specified

arr = []

RSpec.describe "Group" do
  it ("the first example mutates the global state") {
    arr.push('mutation')
  }

  it ("the second example does not mutate the global state") { true }

  it("order-dependent failing example")  {
    fail if arr.length > 0
  }
end
