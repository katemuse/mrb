class CreatePdfs < ActiveRecord::Migration
  def self.up
    create_table :pdfs do |t|
      t.integer:list_id, :null => false
      
      t.integer:parent_id
       t.string:content_type
       t.string:filename
       t.integer:size
       t.integer:width
       t.integer:height
       t.string:thumbnail
      
      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
