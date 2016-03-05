class ResponsesController < ApplicationController
	before_action :find_message
	before_action :find_response, only: [:edit, :update, :destroy]
	before_action :authenticate_company!

	def create
		@response = @message.responses.create(response_params)
		@response.company_id = current_company.id
		if @response.save
			redirect_to message_path(@message)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @response.update(response_params)
			redirect_to message_path(@message)
		else
			render 'edit'
		end 
	end

	def destroy 
		@response.destroy
		redirect_to message_path(@message)
	end



	private
		def response_params
			params.require(:response).permit(:content)
		end

		def find_message
			@message = Message.find(params[:message_id])
		end

		def find_response
			@response = @message.responses.find(params[:id])
		end
end
