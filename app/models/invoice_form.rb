class InvoiceForm < ActiveRecord::Base
	has_many :invoice_fields, :dependent => :destroy
	accepts_nested_attributes_for :invoice_fields, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
