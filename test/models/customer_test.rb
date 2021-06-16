require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  def setup
    @customer = Customer.new(username: "Test Customer", email: "customer@myapp.com")
  end

  test "should be valid" do
    assert @customer.valid?
  end

  test "name should be present" do
    @customer.username = " "
    assert_not @customer.valid?
  end

end
