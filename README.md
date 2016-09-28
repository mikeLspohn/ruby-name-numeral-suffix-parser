# Problem?
So, in rails if you have a name, say `name = Jon Rod II`, and do `name.titleize` you get back `"Jon Rod Ii"`. Whatttt??
Ok, so you can't really expect ActiveSupport to take care of everything for you. This script was made specifically
to solve this one problem (but may be expanded on!).

## Usage
  * `git clone https://github.com/mikeLspohn/ruby-name-numeral-suffix-parser`

```ruby
require 'parse_name_numeral_suffix'

def SomeClass
  include ParseNameNumeralSuffix

  def full_name(name)
    # in my use case it comes through as name.titleize so "Jon Rod Ii"
    capitalize_name_with_numeral_suffix(name)
  end
end
```

## Todo:
  * Test for numerals NOT at end of string (e.g. "The numeral vi stands for something" probably already capitalized though)
  
