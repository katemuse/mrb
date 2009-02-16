require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_book
    author =  "nina"
    title = "righteous"
    assert !Book.find_by_author(author)
    nina = Book.create!(:author => author, :title => title)
    assert Book.find_by_author(author)       
    assert_equal author, nina.author
    assert_equal title, nina.title
    
    assert_redirected_to book_path(assigns(:book))
  end

  def test_should_show_book
    get :show, :id => books(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => books(:one).id
    assert_response :success
  end

  def test_should_update_book
    put :update, :id => books(:one).id, :book => { }
    assert_redirected_to book_path(assigns(:book))
  end

  def test_should_destroy_book
    assert_difference('Book.count', -1) do
      delete :destroy, :id => books(:one).id
    end

    assert_redirected_to books_path
  end
end
