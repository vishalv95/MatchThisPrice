class Message < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :responses
end
