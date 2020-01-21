require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../person')

class TestPerson < Minitest::Test

  def setup
    @person1 = Person.new("Mavis", 74)
  end

  def test_get_name
    assert_equal("Mavis", @person1.name)
  end

  
end
