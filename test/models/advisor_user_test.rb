require 'test_helper'

class AdvisorUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @advisor_users = AdvisorUser.new(username: "advisor@domain.com", password: "password")
  end

  test "Should Be Valid" do
    assert @advisor_users.valid?
  end
end
