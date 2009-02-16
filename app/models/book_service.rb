class BookService
  attr_reader :book, :picture
  
  def initialize(book, picture)
    @book = book
    @picture = picture
  end
  
  def save
    return false unless valid?
    begin
      Book.transaction do
        if @picture.new_record?
          @book.picture.destroy if @book.picture
          @picture.book = @book
          @picture.save!
        end
        @book.save!
        true
      end
    rescue
      false
    end
  end
  
  def valid?
    @book.valid? && @picture.valid?
  end  
  
  def update_attributes(book_attributes, picture_file)
    @book.attributes = book_attributes
    unless picture_file.blank?
      @picture = Picture.new(:uploaded_data => picture_file)
    end
    save
  end
  
end