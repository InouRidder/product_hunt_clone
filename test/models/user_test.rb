require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '#full_name, it should return the full name composed of first and last names' do
    user = User.new(first_name: 'Claire', last_name: 'Gautier')
    result = user.full_name
    assert_equal 'Claire Gautier', result
  end

  test '#full_name, it should return the full name with proper capitalization' do
    user = User.new(first_name: 'claIre', last_name: 'gautIER')
    result = user.full_name
    assert_equal 'Claire Gautier', result
  end

end
