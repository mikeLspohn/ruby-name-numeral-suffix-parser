module ParseNameNumeralSuffix
  def capitalize_name_with_numeral_suffix(string)
    string.gsub(/(\bv*i+\b)\z/i){|numeral| numeral.upcase }
  end
end
