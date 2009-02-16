class Pdf < ActiveRecord::Base     
  belongs_to :list
  validates_presence_of :list_id
  has_attachment :content_type => 'application/pdf', :storage => :file_system,  :path_prefix => 'public/pdfs'
  # , 
  #                 :thumbnails => {              
  #                   :thumb => '64x64',                 
  #                 }    
  validates_as_attachment
                
  
end