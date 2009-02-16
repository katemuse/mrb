class List < ActiveRecord::Base   
  has_one :pdf, :dependent => :destroy 
  
  validates_presence_of :name
  def pdf_attributes=(pdf_attributes) 
    pdf_attributes.each do  |attribute|
      pdf.build attribute #<!-- see railscast episode 073, podcast version (qt broken)  --> 
    end
  end   
end
