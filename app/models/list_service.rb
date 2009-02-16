class ListService
  attr_reader :list, :pdf
  
  def initialize(list, pdf)
    @list = list
    @pdf = pdf
  end
  
  def save
    return false unless valid?
    begin
      List.transaction do
        if @pdf.new_record?
          @list.pdf.destroy if @list.pdf
          @pdf.list = @list
          @pdf.save!
        end
        @list.save!
        true
      end
    rescue
      false
    end
  end
  
  def valid?
    @list.valid? && @pdf.valid?
  end  
  
  def update_attributes(list_attributes, pdf_file)
    @list.attributes = list_attributes
    unless pdf_file.blank?
      @pdf = Picture.new(:uploaded_data => pdf_file)
    end
    save
  end
  
end