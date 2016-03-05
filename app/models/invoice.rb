class Invoice < ActiveRecord::Base
	has_many :fields, class_name: "InvoiceField"
	accepts_nested_attributes_for :fields, allow_destroy: true 
end
