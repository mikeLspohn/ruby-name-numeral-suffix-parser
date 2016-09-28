require 'minitest/autorun'
require_relative '../parse_name_numeral_suffix'

class TestParseNameSuffixNumerals < MiniTest::Unit::TestCase
  include ParseNameNumeralSuffix

  def test_that_numerals_are_upcased
    name = 'Jon Rod Ii'
    assert_equal 'Jon Rod II', capitalize_name_with_numeral_suffix(name)

    name2 = 'Jon Rod Vii'
    assert_equal 'Jon Rod VII', capitalize_name_with_numeral_suffix(name2)
  end

  def test_that_names_without_numerals_stay_the_same
    name = 'Jon Rod'
    assert_equal name, capitalize_name_with_numeral_suffix(name)
  end
end
