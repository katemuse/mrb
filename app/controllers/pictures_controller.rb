class PicturesController < ApplicationController        
  def destroy 
    @picture = Picture.find(params[:id])  
    @book_id = @picture.book.id  
    if @picture.destroy
      flash[:notice] = "picture successfully deleted"
      redirect_to edit_book_path(@book_id)
    else
      flash[:now] = "couldn't delete picture"
      render edit_book_path(@book_id)
    end
    
     
  end
end
