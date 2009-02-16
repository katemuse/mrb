class AddBookSubject < ActiveRecord::Migration
  def self.up 
    add_column :books, :subject, :string 
    add_column :books, :price, :decimal
    add_column :books, :heading, :string
    
    
  end

  def self.down  
    remove_column :books, :subject
    remove_column :books, :price   
    remove_column :books, :heading   
  end
end  
