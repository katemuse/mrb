New table

list page
table will use the image-uploader for pdf's
each pdf will store a category name as a string, and appear under that category's section on that page.
categories are: Fairs, Catalogues, Varia

category:string
parent_id:integer
content_type:string
filename:string
size:integer
width:integer
height:integer
thumbnail:string
timestamps

create_table "lists", :force => true do |t|
   t.string  "category"
   t.integer  "parent_id"
   t.integer  "size"
   t.integer  "width"
   t.integer  "height"
   t.string   "content_type"
   t.string   "filename"
   t.string   "thumbnail"
   t.datetime "created_at"
   t.datetime "updated_at"
 end



