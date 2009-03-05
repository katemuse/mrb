class ListsController < ApplicationController
  # GET /lists
  # GET /lists.xml
  before_filter :authenticate, :except => [:index]
  before_filter :is_authenticated?, :only => [:index,:edit, :new, :create, :login]
  

  def index
     @fairs, @catalogues, @varia = [],[],[]
     
     List.find(:all, :include => :pdf).each do |list|
       if list.category == 'Fairs'
         @fairs << [list, list.pdf]
        
       elsif list.category == "Catalogues"
         @catalogues << [list, list.pdf]    

       else
         @varia << [list, list.pdf] 

       end
     end
        
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lists }
    end
  end

 

  # GET /lists/new
  # GET /lists/new.xml
  def new
    @list = List.new
    @pdf = @list.pdf.build    # this was key-- PUT THE DAMN SECOND MODEL IN THE CONTROLLER METHOD!  I spent about a day tring to figure this out.  D'oh.        
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @list }
    end
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id]) 
    @pdf = @list.pdf
  end

  # POST /lists
  # POST /lists.xml
  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        flash[:notice] = 'List was successfully created.'
        format.html { redirect_to(lists_url)  }
        format.xml  { render :xml => @list, :status => :created, :location => @list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lists/1
  # PUT /lists/1.xml
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        flash[:notice] = 'List was successfully updated.'
        format.html { redirect_to(lists_url)  }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.xml
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to(lists_url) }
      format.xml  { head :ok }
    end
  end
end