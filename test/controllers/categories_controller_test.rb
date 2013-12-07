require "test_helper"

class CategoriesControllerTest < ActionController::TestCase


  def test_new
    get :new
    assert_response :success
    assert_select 'form'
  end

  def test_create
    assert_difference 'Category.count' do
      post :create, category: {name: 'Kitchen'}
    end
    assert_redirected_to categories_url
    assert_equal 'Category Created!', flash[:notice]
  end

  def test_create_fail
    assert_no_difference 'Category.count' do
      post :create, category: {name: ''}
    end
    assert_template 'new'
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_show
    get :show
    assert_response :success
  end

end
