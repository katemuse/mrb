class BooksController < ApplicationController     

  # before_filter :is_authenticated?, :only => [:index, :show, :login]
  
  # GET /books
  # GET /books.xml
  def index
    @books = Book.find(:all, :order => 'title asc')
                                             
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @books }
    end    
  end

  # GET /books/1
  # GET /books/1.xml
  def show
    @book = Book.find(params[:id])
    @picture = @book.picture
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end
    
    
    # GET /books
  # GET /books.xml
  def  old_list
    @books = Book.find(:all)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end 
 
  
  # GET /books/new
  # GET /books/new.xml
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])      
    @picture = @book.picture 
  end

  # POST /books
  # POST /books.xml
  def create
    @book = Book.new(params[:book])
    @picture = Picture.new(:uploaded_data => params[:picture_file])
    @service = BookService.new(@book, @picture)
    respond_to do |format|
      if @book.save
        flash[:notice] = 'Book was successfully created.'
        format.html { redirect_to(@book) }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.xml
  def update
    @book = Book.find(params[:id])
    @picture = @book.picture
    @service = BookService.new(@book, @picture)
    respond_to do |format|
      if @service.update_attributes(params[:book], params[:picture_file])
        flash[:notice] = 'Book was successfully updated.'
        format.html { redirect_to(@book) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Book could not be updated." 
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.xml
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to(books_url) }
      format.xml  { head :ok }
    end
  end   
  

    
 
end
