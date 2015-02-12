require 'minitest/autorun'
require_relative 'phone_number'

class PhoneNumberTest < MiniTest::Unit::TestCase
  def setup; end

  # def test_method_1
    # assert_equal(expected, actual)
    # assert_epmty []
    # assert_includes collection, obj
    # assert_instance_of Klass, obj
    # refute_*
  # end

  def test_cleans_number
    p_number = PhoneNumber.new('(123) 456-7890')
    assert_equal('1234567890', p_number.number)
  end

  def test_display_number
    skip
    p_number = PhoneNumber.new('1234567890')
    assert_equal('(123) 456-7890', p_number.to_s)
  end

  def test_contains_nonnumeric
    skip
    p_number = PhoneNumber.new('123456789A')
    assert_equal(nil, p_number.number)
  end

  def test_contains_10_digits
    skip
    p_number = PhoneNumber.new('1234567890')
    assert_equal('1234567890', p_number.number)
  end

  def test_valid_11_digits
    skip
    p_number = PhoneNumber.new('11234567890')
    assert_equal('1234567890', p_number.number)
  end

  def test_invalid_11_digits
    skip
    p_number = PhoneNumber.new('21234567890')
    assert_equal(nil, p_number.number)
  end

  def test_greater_than_11
    skip
    p_number = PhoneNumber.new('111234567890')
    assert_equal(nil, p_number.number)
  end

  def test_less_than_10
    skip
    p_number = PhoneNumber.new('1234')
    assert_equal(nil, p_number.number)
  end
end