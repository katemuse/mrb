class ChangePriceType < ActiveRecord::Migration
  def self.up  
    Book.update_all("price = price * 100") 
    change_column :books, :price, :integer
  end

  def self.down
    change_column :books, :price, :decimal 
    Book.update_all("price = price / 100.0")
  end
end
       