class Category < ApplicationRecord
    self.table_name = 'category'
    
    has_many :products
    belongs_to :admin
end
