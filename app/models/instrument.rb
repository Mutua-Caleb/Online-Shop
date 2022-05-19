class Instrument < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item 

    mount_uploader :image, ImageUploader # carrierwave support for our image column 
end
