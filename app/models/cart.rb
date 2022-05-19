class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy # if you delete a cart also delete the line_items

    def add_instrument(instrument)
        current_item = line_items.find_by(instrument_id: instrument.id)# the current_item is the line_items with the instrument id 

        if current_item  # if there is a current_item
            current_item.increment(:quantity) # increment the current quantity with the current item 
        else 
            current_item = line_items.build(instrument_id: instrument.id) # build the current item using the instrument id
        end
        current_item # return the current item 
    end

    def total_price 
        line_items.to_a.sum {|item| item.total_price}
    end
end
