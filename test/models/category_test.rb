require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new name: 'Home'
  end

  def test_valid
    assert @category.valid?
  end

  def test_invalid_without_name
    @category.name = nil
    refute @category.valid?
  end

  def test_invalid_without_long_name
    @category.name = "A"
    refute @category.valid?
  end

end
