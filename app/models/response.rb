class Response < ActiveRecord::Base
  belongs_to :message
  belongs_to :company
end
